# Generated by Django 4.1.6 on 2023-03-01 05:20

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Customer',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('customer_name', models.CharField(max_length=100)),
                ('customer_email', models.CharField(max_length=100)),
                ('customer_phone', models.CharField(max_length=10)),
                ('customer_address', models.CharField(max_length=100)),
                ('customer_zipcode', models.CharField(max_length=10)),
            ],
        ),
    ]
