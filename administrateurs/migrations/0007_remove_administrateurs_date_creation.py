# Generated by Django 3.1.4 on 2021-04-13 10:18

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('administrateurs', '0006_auto_20210208_1409'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='administrateurs',
            name='date_creation',
        ),
    ]
