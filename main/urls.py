from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.HomeView.as_view(), name='index'),
    url(r'^preferences/$', views.PreferencesView.as_view(), name='preferences'),
    url(r'^ajax/quote/$', views.RandomQuoteJsonView.as_view(), name='ajax_quote_json'),
    url(r'^ajax/sentiment/(\d+)/(.*)$', views.QuoteSentimentJsonView.as_view(), name='ajax_quote_sentiment'),
    url(r'^quote/$', views.RandomQuoteAjaxView.as_view(), name='ajax_quote'),
]