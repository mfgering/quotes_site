from django.conf.urls import include
from django.urls import path, re_path
from django.views.generic import TemplateView

from . import views

urlpatterns = [
    path('', views.HomeView.as_view(), name='index'),
    path('about/', views.AboutView.as_view(), name='about'),
    path('preferences/', views.PreferencesView.as_view(), name='preferences'),
    re_path(r'^ajax/quote/((?P<quote_id>\d+)?/)?$', views.QuoteJsonView.as_view(), name='ajax_quote_json'),
    re_path(r'^ajax/sentiment/(?P<quote_id>\d+)/(?P<sentiment>.*)$', views.QuoteSentimentJsonView.as_view(), name='ajax_quote_sentiment'),
    re_path(r'^quote/((?P<quote_id>\d+)?/)?$', views.QuoteAjaxView.as_view(), name='ajax_quote'),
    path('quotes/', views.QuoteListView.as_view(), name='quotes'),
    path('contact/sent/',
        TemplateView.as_view(
            template_name='contact_form/contact_form_sent.html'),
        name='contact_form_sent'),
    path('', include("django.contrib.auth.urls")),

]