# Generated by Django 4.0.4 on 2022-06-03 04:44

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0018_requestmodel_otp'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='requestmodel',
            name='otp',
        ),
    ]
