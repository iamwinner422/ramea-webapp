# Generated by Django 3.1.6 on 2021-03-11 17:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('points_affaire', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='pointsaffaires',
            name='adresse',
            field=models.CharField(default=0, max_length=255),
            preserve_default=False,
        ),
    ]
