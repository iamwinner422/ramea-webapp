# Generated by Django 3.1.6 on 2021-02-08 14:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('administrateurs', '0005_auto_20210208_1156'),
    ]

    operations = [
        migrations.AlterField(
            model_name='administrateurs',
            name='telephone',
            field=models.CharField(error_messages={'unique': 'Le téléphone saisi est déjà utilisé.'}, max_length=8, unique=True),
        ),
    ]
