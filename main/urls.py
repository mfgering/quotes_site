from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^preferences/$', views.preferences, name='preferences'),
    url(r'^ajax/quote/$', views.random_quote_json, name='ajax_quote_json'),
    url(r'^ajax/sentiment/(\d+)/(.*)$', views.quote_sentiment_json, name='ajax_quote_sentiment'),
    url(r'^quote/$', views.random_quote_ajax, name='ajax_quote'),
]