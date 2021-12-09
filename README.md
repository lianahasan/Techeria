# Techeria

Techeria is an ecommerce website that displays numerous technology products (phones,
computers, tablets, TVs, etc.) to be sold. Users can select items to add to their cart and buy them
through a secure payment gateway.

# Deployed Website:
https://techeria.herokuapp.com/  

# Demo Video:
https://www.youtube.com/watch?v=wm5OuwJVCeA


## Documentations:
https://github.com/lianahasan/Techeria/wiki

# Running the project locally:
## Running the project (Not making changes to the database):
1. Open PHPMyAdmin (http://localhost/phpmyadmin) or MySQL Workbench
2. Import techeria_db.sql (creates database, inserts tables)
3. Update settings.py with database password
4. Run this line in the project folder techeria_controller/: 
```
python manage.py migrate
``` 
5. Run this line to run the project:
``` 
python manage.py runserver
```
## Running the project + Making changes to the database:
1. Open PHPMyAdmin (http://localhost/phpmyadmin) or MySQL Workbench
2. Import techeria_db.sql (creates database, inserts table)
3. On PHPMyAdmin, make any changes in the database (adding tables, adding values, etc)
4. Update settings.py with database password
5. Run this line in the project folder 'techeria_controller/':
``` 
python manage.py migrate
```
6. Run this line in the same folder:
```
python manage.py inspectdb > models.py
```
7. In the newly created models.py file, only copy the code of any new tables you added or tables that you changed. 
8. Paste it into the models.py folder located in the project folder 'techeria_app\'
9. Delete the first models.py that you created.
10. Update views.py with any new tables that you created.
11. Run this line to run the project:
```
python manage.py runserver
```
12. To push changes with the updated database, export the database from PHPMyAdmin, and replace the techeria_db.sql with the updated version.

## LOGO

![LogoTECHERIA](https://user-images.githubusercontent.com/91642860/138016174-48549324-1834-46dd-8a56-82c6f16791a2.png)

