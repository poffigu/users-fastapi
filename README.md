## Users FastAPI
Сервис управления пользователями.

### 1. Запуск
```shell
docker-compose up -d --build
```
Документация: http://localhost:8000/docs

### 2. Настройки
В файле `src/config.py` общие настройки приложения
```python
PRODUCTION = False
APP_TITLE = "Project #1"
APP_VERSION = "0.1.0"
```
