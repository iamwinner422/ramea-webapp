# Generated by Django 3.1.4 on 2021-03-15 12:33

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('produits', '0006_auto_20210302_1515'),
        ('histo_prod', '0002_auto_20210315_1151'),
    ]

    operations = [
        migrations.AlterField(
            model_name='historiqueprod',
            name='produit',
            field=models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='produits.produits'),
        ),
    ]
