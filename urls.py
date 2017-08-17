from django.conf.urls import include, url
from django.contrib import admin
from django.conf import settings

import main.views


urlpatterns = [
    url(r'^', include('django.contrib.auth.urls')),
    url(r'^$', main.views.HomeView.as_view(), name='index'),
    url(r'^', include('main.urls')),
    url(r'^admin/', admin.site.urls),
]

if settings.DEBUG:
    import debug_toolbar
    urlpatterns = [
        url(r'^__debug__/', include(debug_toolbar.urls)),
    ] + urlpatterns
