import json

from django.http import JsonResponse
from django.template import loader
from django.views import View
from django.views.generic import FormView, TemplateView
from .models import Category, Quote
from .forms import PreferencesForm


class HomeView(View):
    def dispatch(self, request, *args, **kwargs):
        view = RandomQuoteAjaxView.as_view()
        return view(request, *args, **kwargs)


class RandomQuoteAjaxView(TemplateView):
    """Handle a request for a random quote. The response is ajax-enabled."""
    template_name = 'main/quote_ajax.html'


class RandomQuoteJsonView(View):
    """This is an ajax call for random quote data (to be returned as json)."""
    def get(self, request, *args, **kwargs):
        category_keys = [int(pk) for pk, v in get_category_prefs(request).items() if v]
        quote = Quote.objects.filter(category_id__in=category_keys).order_by('?').first()
        quote.views += 1
        quote.save()
        return JsonResponse(response_data_for(request, quote))


class QuoteSentimentJsonView(View):
    """This is an ajax call for setting the sentiment of a quote."""
    def get(self, request, *args, **kwargs):
        (quote_id, sentiment) = self.args
        quote = Quote.objects.get(id=quote_id)
        if sentiment == 'like':
            quote.likes += 1
        elif sentiment == 'dislike':
            quote.dislikes += 1
        quote.save()
        return JsonResponse(response_data_for(request, quote))


def response_data_for(request, quote):
    template = loader.get_template('main/quote_content.html')
    context = {'quote': quote}
    content = template.render(context, request)
    return {
        'content': content,
        'quote': {
            'id': quote.id,
            'title': quote.title,
            'subtitle': quote.subtitle,
            'content': quote.content,
            'views': quote.views,
            'likes': quote.likes,
            'dislikes': quote.dislikes,
        },
        'category': {
            'name': quote.category.name
        }
    }

class AboutView(TemplateView):
    template_name = 'main/about.html'

class PreferencesView(FormView):
    template_name = 'main/preferences.html'
    form_class = PreferencesForm
    success_url = '/'

    def get_initial(self):
        prefs = self.get_category_prefs()
        initial = super(PreferencesView, self).get_initial()
        initial['category_prefs'] = prefs
        return initial

    def form_valid(self, form):
        response = self.render_to_response(self.get_context_data())
        self.set_category_prefs(response, form)
        return response

    def get_category_prefs(self):
        if 'category_prefs' in self.request.COOKIES:
            prefs_json = self.request.COOKIES['category_prefs']
            category_prefs = json.loads(prefs_json)
        else:
            category_prefs = dict()
            for category in Category.objects.order_by('name'):
                category_prefs[str(category.pk)] = True
        return category_prefs

    def set_category_prefs(self, response, form):
        category_prefs = dict()
        for field_name in form.fields:
            field = form.fields[field_name]
            if hasattr(field, 'category_pk'):
                category_prefs[str(field.category_pk)] = form.cleaned_data[field_name]
        response.set_cookie('category_prefs', json.dumps(category_prefs))
        return category_prefs


