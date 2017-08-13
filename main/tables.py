import django_tables2 as tables
from .models import Quote

class QuoteTable(tables.Table):
    class Meta:
        model = Quote

    def render_content(self, value=None):
        return '***'+value