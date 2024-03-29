from django.contrib import admin

from .models import Quote, Category

class CategoryAdmin(admin.ModelAdmin):
    list_display = ['id', 'name']
    search_fields = ['name']
admin.site.register(Category, CategoryAdmin)

class QuoteAdmin(admin.ModelAdmin):
    list_display = ['id', 'title', 'content', 'category', 'likes', 'dislikes', 'views']
    search_fields = ['title', 'content', 'category__name']
admin.site.register(Quote, QuoteAdmin)

