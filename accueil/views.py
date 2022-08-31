from django.shortcuts import redirect, render

# Create your views here.
def index(request):
    return render(request, 'accueil/index.html')


def handle_not_found(request, exception):
    return render(request, 'others/404.html')

def handle_server_error(request):
    return render(request, 'others/500.html')