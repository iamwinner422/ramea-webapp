# Generated by Django 3.1.6 on 2021-02-02 14:37

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Administrateur',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nom', models.CharField(max_length=50)),
                ('password', models.CharField(max_length=255)),
                ('adr_mail', models.CharField(max_length=255, unique=True)),
                ('telephone', models.IntegerField(unique=True)),
                ('date_creation', models.DateTimeField(auto_now_add=True)),
            ],
        ),
    ]
