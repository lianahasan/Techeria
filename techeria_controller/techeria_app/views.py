from django.db.models.fields import NullBooleanField
from django.http import response
from django.shortcuts import redirect, render
from techeria_app.models import Products, BuyerModel, SellerModel
from django.contrib.auth.models import User, auth


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





def registration(request):
    

    if request.method == 'POST':
        first_name = request.POST ['First_Name']
        last_name = request.POST ['Last_Name']
        date_of_birth = request.POST ['Date_of_Birth']
        email = request.POST ['Email_Id']
        mobile_number = request.POST ['Mobile_Number']
        address = request.POST['Address']
        user_name = request.POST['Username']
        city = request.POST ['City']
        state = request.POST ['State']
        zip_code = request.POST ['Zip_Code']
        country = request.POST ['Country']
        password = request.POST ['Password']
        confirm_password = request.POST ['Confirm_Password']
        category = request.POST.get ('kk')

        buyer = BuyerModel()
        seller = SellerModel()


        
      
        if category == "Buyer":    
            buyer.user_name = user_name
            buyer.first_name=first_name
            buyer.last_name=last_name
            buyer.user_name=user_name
            buyer.email=email; 
            buyer.date_of_birth=date_of_birth
            buyer.mobile_number=mobile_number
            buyer.address=address
            buyer.city=city
            buyer.state=state
            buyer.zip_code=zip_code
            buyer.country=country 
            user = User.objects.create_user(username=user_name, password=password, email=email, first_name=first_name, last_name=last_name)  
            buyer.save()
            user.save()
            return redirect("/")
        
        elif category == "Seller":    
            seller.user_name = user_name
            seller.first_name=first_name
            seller.last_name=last_name
            seller.user_name=user_name
            seller.email=email; 
            seller.date_of_birth=date_of_birth
            seller.mobile_number=mobile_number
            seller.address=address
            seller.city=city
            seller.state=state
            seller.zip_code=zip_code
            seller.country=country
            user = User.objects.create_user(username=user_name, password=password, email=email, first_name=first_name, last_name=last_name)  
            seller.save()
            user.save()
            return redirect("/")
        else:
            return render(request, 'registration.html')
    else:

        return render(request, 'registration.html')



        