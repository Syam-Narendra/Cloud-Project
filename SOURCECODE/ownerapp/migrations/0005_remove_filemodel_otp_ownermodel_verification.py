# Generated by Django 4.0.4 on 2022-06-03 06:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ownerapp', '0004_filemodel_otp_alter_filemodel_file'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='filemodel',
            name='otp',
        ),
        migrations.AddField(
            model_name='ownermodel',
            name='verification',
            field=models.CharField(help_text='verification', max_length=250, null='True'),
            preserve_default='True',
        ),
    ]