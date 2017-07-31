from django import forms
from .models import Category

class PreferencesForm(forms.Form):

    def __init__(self, *args, **kwargs):
        category_prefs = kwargs.pop('category_prefs')
        super(PreferencesForm, self).__init__(*args, **kwargs)
        for category in Category.objects.order_by('name'):
            checkbox = forms.BooleanField(label=category.name, required=False)
            checkbox.category_pk = category.pk
            if category.pk in category_prefs:
                checkbox.initial = category_prefs[category.pk]
            else:
                checkbox.initial = True
            self.fields['category_%s' % category.pk] = checkbox