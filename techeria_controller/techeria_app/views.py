from django.db.models.fields import NullBooleanField
from django.forms.fields import ImageField
from django.http import response
from django.http import HttpResponse
from django.shortcuts import redirect, render
from techeria_app.models import BuyerModel, SellerModel, Products, Laptops, Smartphone, Cameras, Accessories
from django.contrib.auth.models import User, auth
from django.core.mail import EmailMessage
from django.views import View
from django.contrib import messages



from django.utils.encoding import force_bytes, force_text, DjangoUnicodeDecodeError
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.contrib.sites.shortcuts import get_current_site
from django.urls import reverse
from .utils import token_generator

# Create your views here.

def index(request):
    product = Products.objects.all()
    context = {
        'product': product
    }
    return render(request, 'index.html', context)

def about(request):
    return render(request, 'about.html')

def contact(request):
    return render(request, 'contact.html')

def watch(request):
    return render(request, 'watch.html')

def loginpage(request):
    return render(request, 'loginpage.html')

def cart(request):
    return render(request, 'cart.html')

def checkout(request):
    return render(request, 'checkout.html')

def registration(request):
    return render(request, 'registration.html')

def search(request):
    q = request.GET['q']
    data = Products.objects.filter(name__icontains=q)
    return render(request, 'search.html', {'data': data})


def product(request):
    return render(request, 'product.html')


def productInfo(request, i):
    oneProduct = Products.objects.get(id=i)
    context = {
        'oneProduct': oneProduct
    }
    return render(request, 'productInfo.html', context)



def watch(request):
    return render(request, 'watch.html')

def laptop(request):
    laptop = Laptops.objects.all()
    context = {
        'laptop': laptop
    }
    return render(request, 'laptop.html', context)


def smartphone(request):
    smartphone = Smartphone.objects.all()
    context = {
        'smartphone': smartphone
    }
    return render(request, 'smartphone.html', context)

def camera(request):
    camera = Cameras.objects.all()
    context = {
        'camera': camera
    }
    return render(request, 'camera.html', context)


def accessorie(request):
    accessorie = Accessories.objects.all()
    context = {
        'accessorie': accessorie
    }
    return render(request, 'accessorie.html', context)



def registration(request):
    if request.method == 'POST':
        first_name = request.POST ['First_Name']
        last_name = request.POST ['Last_Name']
        date_of_birth = request.POST ['Date_of_Birth']
        email = request.POST ['Email_Id']
        mobile_number = request.POST ['Mobile_Number']
        mobile_number = mobile_number
        address = request.POST['Address']
        username = request.POST['Username']
        city = request.POST ['City']
        state = request.POST ['State']
        zip_code = request.POST ['Zip_Code']
        country = request.POST ['Country']
        password = request.POST ['Password']
        confirm_password = request.POST ['Confirm_Password']
        category = request.POST.get ('kk')

        buyer = BuyerModel()
        seller = SellerModel()





        if password == confirm_password:

            if User.objects.filter(username=username).exists():
                messages.info(request, "Username has already been taken")
                return redirect("registration")

            elif User.objects.filter(email=email).exists():
                messages.info(request, "You already have an account please login")
                return redirect("registration")

            else:


                if category == "Buyer":
                    buyer.username = username
                    buyer.first_name=first_name
                    buyer.last_name=last_name
                    buyer.username=username
                    buyer.email=email
                    buyer.date_of_birth=date_of_birth
                    buyer.mobile_number=mobile_number
                    buyer.address=address
                    buyer.city=city
                    buyer.state=state
                    buyer.zip_code=zip_code
                    buyer.country=country
                    user = User.objects.create_user(username=username, password=password, email=email, first_name=first_name, last_name=last_name, is_staff = "True")
                    user.is_active = False                  
                    user.save()
                    buyer.save()



                    domain = get_current_site(request).domain
                    uidb64 = urlsafe_base64_encode(force_bytes(user.pk))

                    link = reverse('activate', kwargs={'uidb64':uidb64, 'token': token_generator.make_token(user)})
                    email_subject = 'Activate your account'
                    activate_url = 'http://'+domain+link
                    email_body = 'Hi '+ user.first_name+'. please use this link to verify ypur account\n' + activate_url
                    email = EmailMessage(
                         email_subject,
                         email_body,
                         'noreply@techeria.com',
                        [email],
                        ['bcc@example.com'],
                        
                    )
                    email.send(fail_silently=False)


                    
                    return redirect("loginpage")


                elif category == "Seller":
                    seller.user_name = username
                    seller.first_name=first_name
                    seller.last_name=last_name
                    seller.username=username
                    seller.email=email
                    seller.date_of_birth=date_of_birth
                    seller.mobile_number=mobile_number
                    seller.address=address
                    seller.city=city
                    seller.state=state
                    seller.zip_code=zip_code
                    seller.country=country
                    user = User.objects.create_user(username=username, password=password, email=email, first_name=first_name, last_name=last_name)
                    user.is_active = False
                    user.save()
                    seller.save()
                    
                    return redirect("loginpage")

                else:
                    messages.info(request, "Something goes wrong")
                    return redirect("registration")
        else:
            messages.info(request, "Password does not match")
            return redirect("registration")


    else:

        return render(request, 'registration.html')



def loginpage(request):
    if request.method == 'POST':
        username = request.POST ['username']
        password = request.POST ['password']
        category = request.POST.get ('kk')

        user=auth.authenticate(username=username,password=password)

        if category == "Buyer":
            if user is not None and user.is_staff:
                auth.login(request, user)
                return redirect("/")
            else:
                messages.info(request, 'Check your credentials')
                return redirect("loginpage")

        if category == "Seller":
            if user is not None and not user.is_staff:
                auth.login(request, user)
                return redirect("/")
            else:
                messages.info(request, 'Check your credentials')
                return render(request, 'loginpage.html')
                
                

    else:
        return render(request, 'loginpage.html')


def signUpButton(request):
    return render(request, 'registration.html')





def logout(request):
    auth.logout(request)
    return render(request, 'index.html')




def addproduct(request):
    if request.method == 'POST':
        name = request.POST.get('name')
        description = request.POST.get('description')
        price = request.POST.get('price')
        category = request.POST.get('category')
        if len(request.FILES) != 0:
            image = request.FILES.get('myimage')
        p = Products()
        if name != "":          
            p.name = name
            p.description=description
            p.price=price
            p.category=category
            if len(request.FILES) != 0:
                p.image=image

            p.save()
            return render(request, 'index.html')
        else:
            return render(request, 'addproduct.html')
        
    else:
        return render(request, 'addproduct.html')



class VerificationView(View):
    def get(self, request, uidb64, token):
        try:
            id = force_text(urlsafe_base64_decode(uidb64))
            user = User.objects.get(pk=id)

            if not token_generator.check_token(user, token):
                return redirect('loginpage' + '?message=' + 'user already activate')
            if user.is_active:
                return redirect('loginpage')
            user.is_active = True
            user.save()
            messages.success(request, 'Account activated successfully')
            return redirect('loginpage')
        except Exception as ex:
            pass
        return redirect('loginpage')







#payment views start HERE::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
def place_order(request):
    current_user = request.user

    # Cart count is less than or equal to 0, then redirect back to products
    cart_items = CartItem.objects.filter(user=current_user)
    cart_count = cart_items.count()
    if cart_count <= 0:
        return redirect('techeria_app')

    grand_total = 0
    tax = 0
    for cart_item in cart_items:
        total += (cart_item.product.price * cart_item.quantity)
        quantity += cart_item.quantity
    tax = (2 * total)/100
    grand_total = total + tax

    if request.method == 'POST':
        form = OrderForm(request.POST)
        if form.is_valid():
            # Billing information inside Order table
            data = Order()
            data.user = current_user
            data.first_name = form.cleaned_data['first_name']
            data.last_name = form.cleaned_data['last_name']
            data.phone = form.cleaned_data['phone']
            data.email = form.cleaned_data['email']
            data.address_line_1 = form.cleaned_data['address_line_1']
            data.address_line_2 = form.cleaned_data['address_line_2']
            data.country = form.cleaned_data['country']
            data.state = form.cleaned_data['state']
            data.city = form.cleaned_data['city']
            data.order_note = form.cleaned_data['order_note']
            data.order_total = grand_total
            data.tax = tax
            data.ip = request.META.get('REMOTE_ADDR')
            data.save()
            # This will Genertae order number
            mt = int(datetime.date.today().strftime('%m'))
            dt = int(datetime.date.today().strftime('%d'))
            yr = int(datetime.date.today().strftime('%Y'))


            d = datetime.date(mt,dt,yr)
            current_date = d.strftime("%m%d%Y")
            order_number = current_date + str(data.id)
            data.order_number = order_number
            data.save()

            order = Order.objects.get(user=current_user, is_ordered=False, order_number=order_number)
            context = {
                'order': order,
                'cart_items': cart_items,
                'total': total,
                'tax': tax,
                'grand_total': grand_total,
            }
            return render(request, 'payments.html', context)
    else:
        return redirect('checkout')


def payments(request):
    return render(request, 'payments.html')


