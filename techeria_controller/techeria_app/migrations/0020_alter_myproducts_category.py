# Generated by Django 3.2.7 on 2021-12-01 05:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('techeria_app', '0019_alter_myproducts_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='myproducts',
            name='category',
            field=models.CharField(max_length=255),
        ),
    ]
