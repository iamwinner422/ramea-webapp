# Generated by Django 3.1.6 on 2021-02-08 14:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('organisations', '0006_auto_20210202_1437'),
    ]

    operations = [
        migrations.AlterField(
            model_name='organisations',
            name='telephone_p',
            field=models.CharField(error_messages={'unique': 'Une organisation avec ce nom téléphone déjà.'}, max_length=8, unique=True),
        ),
        migrations.AlterField(
            model_name='organisations',
            name='telephone_s',
            field=models.CharField(error_messages={'unique': 'Une organisation avec ce nom téléphone déjà.'}, max_length=8, null=True, unique=True),
        ),
    ]
