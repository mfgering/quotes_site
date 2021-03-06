import django_tables2 as tables
from django.utils.safestring import mark_safe
from .models import Quote

class QuoteTable(tables.Table):
    class Meta:
        model = Quote
        attrs = {'class': 'table'}

    @mark_safe
    def render_content(self, value=None):
        return value

    def render_category(self, value=None):
        return value.name