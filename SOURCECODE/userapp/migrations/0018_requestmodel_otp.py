# Generated by Django 4.0.4 on 2022-06-01 09:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0017_remove_requestmodel_key'),
    ]

    operations = [
        migrations.AddField(
            model_name='requestmodel',
            name='otp',
            field=models.IntegerField(null=True),
        ),
    ]
