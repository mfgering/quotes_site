from django.http import HttpResponse
from django.shortcuts import render
from django.template import loader
from .models import Category, Quote
from .forms import PreferencesForm


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

def preferences(request):
    if request.method == 'POST':
        #TODO: FIX
        pass
    else:
        category_prefs = {}
        for category in Category.objects.order_by('name'):
            category_prefs[category.pk] = False
        form = PreferencesForm(category_prefs=category_prefs)
    return render(request, 'main/preferences.html', {'form': form})




