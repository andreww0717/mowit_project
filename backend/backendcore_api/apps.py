from django.apps import AppConfig


class BackendcoreConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'backendcore_api'

    def ready(self):
        import backendcore_api.signals
