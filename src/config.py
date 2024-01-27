from typing import Any


PRODUCTION = False
APP_TITLE = "Project #1"
APP_VERSION = "0.1.0"

app_configs: dict[str, Any] = {
    "title": f"{APP_TITLE}",
    "version": f"{APP_VERSION}",
}

if PRODUCTION:
    app_configs["openapi_url"] = None
