import json

from django.http import HttpResponse, JsonResponse
from django.shortcuts import redirect, render
from django.template import loader
from .models import Category, Quote
from .forms import PreferencesForm


def index(request):
    return random_quote(request)

def random_quote(request):
    template = loader.get_template('main/quote.html')
    category_keys = [int(pk) for pk, v in get_category_prefs(request).items() if v]
    quote = Quote.objects.filter(category_id__in=category_keys).order_by('?').first()
    context = {'quote': quote}
    return HttpResponse(template.render(context, request))

def random_quote_json(request):
    category_keys = [int(pk) for pk, v in get_category_prefs(request).items() if v]
    quote = Quote.objects.filter(category_id__in=category_keys).order_by('?').first()
    response_data = {
        'quote_title': quote.title,
        'quote_subtitle': quote.subtitle,
        'quote_content': quote.content,
        'category_name': quote.category.name}
    return JsonResponse(response_data)

def about(request):
    template = loader.get_template('main/about.html')
    context = {}

    return HttpResponse(template.render(context, request))

def preferences(request):
    category_prefs = get_category_prefs(request)
    if request.method == 'POST':
        form = PreferencesForm(request.POST, category_prefs=category_prefs)
        if form.is_valid():
            response =  redirect('/')
            set_category_prefs(response, form)
        else:
            form = PreferencesForm(category_prefs=category_prefs)
            response = render(request, 'main/preferences.html', {'form': form})
    else:
        form = PreferencesForm(category_prefs=category_prefs)
        response = render(request, 'main/preferences.html', {'form': form})
    return response

def get_category_prefs(request):
    if 'category_prefs' in request.COOKIES:
        prefs_json = request.COOKIES['category_prefs']
        category_prefs = json.loads(prefs_json)
    else:
        category_prefs = dict()
        for category in Category.objects.order_by('name'):
            category_prefs[str(category.pk)] = True
    return category_prefs

def set_category_prefs(response, form):
    category_prefs = dict()
    for field_name in form.fields:
        field = form.fields[field_name]
        if hasattr(field, 'category_pk'):
            category_prefs[str(field.category_pk)] = form.cleaned_data[field_name]
    response.set_cookie('category_prefs', json.dumps(category_prefs))
    return category_prefs


