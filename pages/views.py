from django.shortcuts import render
from django.views.generic import TemplateView


class ExampleMessageView(TemplateView):
    template_name = '_message.html'

class HomePageView(TemplateView):
    template_name = 'index.html'