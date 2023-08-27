"""
Django settings for ramea project.

Generated by 'django-admin startproject' using Django 3.0.7.

For more information on this file, see
https://docs.djangoproject.com/en/3.0/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/3.0/ref/settings/
"""

from pathlib import Path
import mimetypes #CSS
import os
import dj_database_url


# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent

import environ
env = environ.Env()
environ.Env.read_env()

mimetypes.add_type("text/css", ".css", True)
# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.0/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'ul6_la!8+v5dmig+f_^k&82vpp(2wi@*#)#ma)0g=(tx%1(dm*'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = False
#SI DEBUG EST EGALE A FALSE ON DOIT METTRE LES HOTES 

ALLOWED_HOSTS = ['*']


# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'accueil',
    'organisations',
    'administrateurs',
    'dashboard',
    'produits',
    'points_affaire',
    'categories',
    'services',
    'gerants',
    'dash_user',
    'clients',
    'prod_gerant',
    'serv_gerant',
    'ventess',
    'histo_prod',
    'rapports',
    'client_panel',
    'mathfilters',
    'prestation',
    'prestations_panel',
    'ventes_panel',
    'panel',
    'requestings',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'whitenoise.middleware.WhiteNoiseMiddleware',  
]

ROOT_URLCONF = 'ramea.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [
            BASE_DIR / 'templates'
        ],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
            'libraries':{
                'app_filter': 'produits.app_filter',
            }

        },
    },
]

WSGI_APPLICATION = 'ramea.wsgi.application'


# Database
# https://docs.djangoproject.com/en/3.0/ref/settings/#databases
DATABASES = {
    'default': dj_database_url.parse(env('DATABASE_URL'))
}

"""
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'ramea_db',
        'HOST': '',
        'USER':'postgres',
        'PASSWORD':'root',
        
    }
}
"""
"""
DATABASES = {
    'default': dj_database_url.config()
}"""

#pywin32==223
#xlwt==1.3.0
#pypiwin32==223

# Password validation
# https://docs.djangoproject.com/en/3.0/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalizationé
# https://docs.djangoproject.com/en/3.0/topics/i18n/

LANGUAGE_CODE = 'fr'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.0/howto/static-files/

#CONFIGURATION DES FICHIERS STATICS
#PROJECT_ROOT = os.path.dirname(os.path.abspath(__file__))
STATIC_URL = '/static/'
MEDIA_URL = '/media/'

if not DEBUG:
    STATICFILES_DIRS = [os.path.join(BASE_DIR, 'static')]
else:
    STATIC_ROOT = os.path.join(BASE_DIR, 'static')


"""STATICFILES_DIRS = [
    BASE_DIR / 'static'
]"""

#DEFINITION DU CHEMINS VERS LE DOSSIER MEDIA

MEDIA_ROOT = BASE_DIR / 'media'
#MEDIA_ROOT = os.path.join(BASE_DIR, 'media')
#STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'
#STATICFILES_STORAGE = 'whitenoise.storage.CompressedStaticFilesStorage'
#django_heroku.settings(locals())

#CONFIGURATION DES URL DE LOGIN
#LOGIN_URL = 'administrateurs:login_admin'
#LOGIN_REDIRECT_URL = 'dashboard:dashboard_index'


# EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
#EMAIL_HOST = 'smtp.mailtrap.io'
#EMAIL_HOST_USER = '3bf2d8ceac4b7a'
#EMAIL_HOST_PASSWORD = '718d68357a81ee'
#EMAIL_PORT = '2525'
# EMAIL_USE_TLS = True

EMAIL_HOST = 'sandbox.smtp.mailtrap.io'
EMAIL_HOST_USER = '3bf2d8ceac4b7a'
EMAIL_HOST_PASSWORD = '718d68357a81ee'
EMAIL_PORT = '2525'