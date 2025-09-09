from django.urls import include, path
from django.contrib import admin
from django.conf import settings
import quotes.views

urlpatterns = [
    #path('', quotes.views.HomeView.as_view(), name='index'),
    path('', include('quotes.urls')),
    path('admin/', admin.site.urls),
    path('ckeditor5/', include('django_ckeditor_5.urls')),
]

if settings.DEBUG:
    import debug_toolbar
    urlpatterns = [
        path('__debug__/', include(debug_toolbar.urls)),
    ] + urlpatterns
