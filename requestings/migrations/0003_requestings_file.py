# Generated by Django 3.1 on 2022-10-02 12:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('requestings', '0002_requestings_valide'),
    ]

    operations = [
        migrations.AddField(
            model_name='requestings',
            name='file',
            field=models.FileField(default='null', upload_to='requesting_docs/'),
            preserve_default=False,
        ),
    ]
