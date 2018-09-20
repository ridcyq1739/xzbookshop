from django import template
from ..models import Books

register = template.Library()

@register.simple_tag
def get_new_books(num=5):
	return Books.objects.all().order_by("add_time")[:num]