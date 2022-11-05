from django.urls import include, re_path
from django.contrib import admin
from django.conf import settings

import quotes


urlpatterns = [
    re_path(r'^', include('django.contrib.auth.urls')),
    # Note: Add the urls from the quotes app without prefixing the app name.
    re_path(r'^$', quotes.views.HomeView.as_view(), name='index'),
    re_path(r'^', include('quotes.urls')),
    re_path(r'^admin/', admin.site.urls),
]

if settings.DEBUG:
    import debug_toolbar
    urlpatterns = [
        re_path(r'^__debug__/', include(debug_toolbar.urls)),
    ] + urlpatterns
