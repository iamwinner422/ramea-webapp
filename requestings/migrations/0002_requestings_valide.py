# Generated by Django 3.1 on 2022-09-14 18:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('requestings', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='requestings',
            name='valide',
            field=models.BooleanField(default=False),
        ),
    ]