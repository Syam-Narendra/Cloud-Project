# Generated by Django 4.0.4 on 2022-05-27 10:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='usermodel',
            name='status',
            field=models.CharField(default='Pending', max_length=50, null='True'),
            preserve_default='True',
        ),
    ]