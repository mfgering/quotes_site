from django.conf.urls import include, url
from django.contrib import admin
from django.conf import settings

import main.views


urlpatterns = [
    url(r'^$', main.views.index, name='index'),
    url(r'^about$', main.views.about, name='about'),
    url(r'^main/', include('main.urls')),
    url(r'^admin/', admin.site.urls),
]

if settings.DEBUG:
    import debug_toolbar
    urlpatterns = [
        url(r'^__debug__/', include(debug_toolbar.urls)),
    ] + urlpatterns
