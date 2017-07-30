from django import forms


class PreferencesForm(forms.Form):
    def __init__(self, *args, **kwargs):
        category_prefs = kwargs.pop('category_prefs')
        super(PreferencesForm, self).__init__(*args, **kwargs)
        for category_pk in category_prefs:
            checkbox = forms.CheckboxInput()
            checkbox.initial = True
            self.fields['category_%s' % category_pk] = checkbox