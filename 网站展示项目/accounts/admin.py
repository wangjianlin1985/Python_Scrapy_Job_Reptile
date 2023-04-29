from django.contrib import admin

# Register your models here.
from .models import UserProfile
class UserProfileAdmin(admin.ModelAdmin):
    list_display = ('user', 'phone_number', 'picture','sex','is_law','law_id',)
    search_fields = ('user', 'phone_number', 'picture','sex','is_law','law_id',)
    list_editable = ('user', 'phone_number', 'is_law','law_id','sex',)
    list_display_links = None
admin.site.register(UserProfile, UserProfileAdmin)
