# Generated by Django 4.1.6 on 2023-03-12 06:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Contractor', '0010_tag_orderstatus_customer_orderstatus_service_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='orderstatus',
            name='tags',
        ),
        migrations.AddField(
            model_name='service',
            name='tags',
            field=models.ManyToManyField(to='Contractor.tag'),
        ),
    ]
