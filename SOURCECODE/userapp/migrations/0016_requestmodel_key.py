# Generated by Django 4.0.4 on 2022-06-01 06:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0015_rename_send_key_requestmodel_key_status'),
    ]

    operations = [
        migrations.AddField(
            model_name='requestmodel',
            name='key',
            field=models.CharField(default='Pending', max_length=50, null='True'),
            preserve_default='True',
        ),
    ]
