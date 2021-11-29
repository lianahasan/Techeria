from django.db.models.fields import NullBooleanField
from django.http import response
from django.shortcuts import redirect, render
from authentication.models import BuyerModel, SellerModel
from django.contrib.auth.models import User, auth
from django.contrib import messages

# Create your views here.



    
def registration(request):
    if request.method == 'POST':
        first_name = request.POST ['First_Name']
        last_name = request.POST ['Last_Name']
        date_of_birth = request.POST ['Date_of_Birth']
        email = request.POST ['Email_Id']
        mobile_number = request.POST ['Mobile_Number']
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
                    buyer.email=email; 
                    buyer.date_of_birth=date_of_birth
                    buyer.mobile_number=mobile_number
                    buyer.address=address
                    buyer.city=city
                    buyer.state=state
                    buyer.zip_code=zip_code
                    buyer.country=country 
                    user = User.objects.create_user(username=username, password=password, email=email, first_name=first_name, last_name=last_name)  
                    buyer.save()
                    user.save()
                    
                    return redirect("loginpage")
                
                elif category == "Seller":    
                    seller.user_name = username
                    seller.first_name=first_name
                    seller.last_name=last_name
                    seller.username=username
                    seller.email=email; 
                    seller.date_of_birth=date_of_birth
                    seller.mobile_number=mobile_number
                    seller.address=address
                    seller.city=city
                    seller.state=state
                    seller.zip_code=zip_code
                    seller.country=country
                    user = User.objects.create_user(username=username, password=password, email=email, first_name=first_name, last_name=last_name)  
                    seller.save()
                    user.save()
                    return redirect("/")
                else:
                    return render(request, '.html')

        elif len(mobile_number)>10:
            messages.info(request, "check your cellphone number")
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
      
        user=auth.authenticate(username=username,password=password)
        if user is not None:
            auth.login(request, user)
            return redirect("/")
        else:
            messages.info(request, 'Check your credentials')
            return redirect("loginpage")


    else:
        return render(request, 'loginpage.html')

def signUpButton(request):
    return render(request, 'registration.html')

def reset_password_email(request):
    return render(request, 'reset_password_email.html')

def ChangePassword(request):
    return render(request, 'ChangePassword.html')

def logout(request):
    auth.logout(request)
    return render(request, 'index.html')
