from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.HomeView.as_view(), name='index'),
    url(r'^preferences/$', views.PreferencesView.as_view(), name='preferences'),
    url(r'^ajax/quote/((?P<quote_id>\d+)?/)?$', views.QuoteJsonView.as_view(), name='ajax_quote_json'),
    url(r'^ajax/sentiment/(?P<quote_id>\d+)/(?P<sentiment>.*)$', views.QuoteSentimentJsonView.as_view(), name='ajax_quote_sentiment'),
    url(r'^quote/((?P<quote_id>\d+)?/)?$', views.QuoteAjaxView.as_view(), name='ajax_quote'),
    url(r'^quotes/$', views.QuoteListView.as_view(), name='quotes'),
]