# Generated by Django 3.1 on 2021-07-07 10:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('clients', '0008_auto_20210407_1541'),
        ('ventess', '0006_auto_20210706_1707'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ventes',
            name='client',
            field=models.ForeignKey(on_delete=models.SET('Client supprimé'), to='clients.clients'),
        ),
    ]
