from django.shortcuts import HttpResponse

# Create your views here.

def hello_django(request):
    print("Request received")
    return HttpResponse("Hello Django")
