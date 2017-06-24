from django.contrib import admin

from .models import Quote, Category

class CategoryAdmin(admin.ModelAdmin):
    list_display = ['id', 'name']
    search_fields = ['name']
admin.site.register(Category, CategoryAdmin)

class QuoteAdmin(admin.ModelAdmin):
    list_display = ['id', 'title']
    search_fields = ['title']
admin.site.register(Quote, QuoteAdmin)

