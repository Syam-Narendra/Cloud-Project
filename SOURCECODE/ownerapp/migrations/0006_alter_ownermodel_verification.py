# Generated by Django 4.0.4 on 2022-06-03 06:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ownerapp', '0005_remove_filemodel_otp_ownermodel_verification'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ownermodel',
            name='verification',
            field=models.CharField(default='Pending', max_length=50),
        ),
    ]