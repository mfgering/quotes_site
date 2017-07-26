from django.http import HttpResponse
from django.template import loader
from .models import Quote


def index(request):
    return random_quote(request)

def random_quote(request):
    template = loader.get_template('main/quote.html')
    quote = Quote.objects.order_by('?').first()
    context = {'quote': quote}

    return HttpResponse(template.render(context, request))

def about(request):
    template = loader.get_template('main/about.html')
    context = {}

    return HttpResponse(template.render(context, request))


