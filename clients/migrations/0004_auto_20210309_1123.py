# Generated by Django 3.1.6 on 2021-03-09 11:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('clients', '0003_auto_20210309_1016'),
    ]

    operations = [
        migrations.AlterField(
            model_name='clients',
            name='telephone_s',
            field=models.CharField(error_messages={'unique': 'Le téléphone saisi existe déjà!'}, max_length=8, null=True),
        ),
    ]
