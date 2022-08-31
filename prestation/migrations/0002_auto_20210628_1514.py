# Generated by Django 3.1 on 2021-06-28 15:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('prestation', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='prestations',
            old_name='montant_prestation',
            new_name='total_prestation',
        ),
        migrations.AddField(
            model_name='serviceprestation',
            name='montant_prestation',
            field=models.FloatField(default=0),
            preserve_default=False,
        ),
    ]
