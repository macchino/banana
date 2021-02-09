from django.apps import apps
from django.urls import include, path
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('i18n/', include('django.conf.urls.i18n')),

    # The Django admin is not officially supported; expect breakage.
    # Nonetheless, it's often useful for debugging.

    path('admin/', admin.site.urls),
    path('checkout/paypal/', include('paypal.express.urls')),
    path('', include(apps.get_app_config('oscar').urls[0])),
    path("", apps.get_app_config("oscar_promotions").urls),
    path("dashboard/promotions/", apps.get_app_config("oscar_promotions_dashboard").urls),
]
