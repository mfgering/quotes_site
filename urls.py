from django.conf.urls import include, url
from django.contrib import admin, auth
from django.conf import settings

import main.views


urlpatterns = [
    url(r'^', include('django.contrib.auth.urls')),
    # Note: Add the urls from the main app without prefixing the app name.
    url(r'^', include('main.urls')),
    url(r'^admin/', admin.site.urls),
    url(r'^login/$', auth.login, name='login'),
    url(r'^logout/$', auth.logout, {'next_page': '/'}, name='logout'),
]

if settings.DEBUG:
    import debug_toolbar
    urlpatterns = [
        url(r'^__debug__/', include(debug_toolbar.urls)),
    ] + urlpatterns
