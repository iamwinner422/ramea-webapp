# Generated by Django 3.1 on 2022-08-31 20:16

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Requestings',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nom', models.CharField(max_length=255)),
                ('telephone_p', models.CharField(max_length=8)),
                ('telephone_s', models.CharField(blank=True, max_length=8, null=True)),
                ('mail', models.CharField(max_length=255)),
                ('other', models.TextField(blank=True, null=True)),
                ('date_add', models.DateTimeField(auto_now_add=True)),
            ],
        ),
    ]
