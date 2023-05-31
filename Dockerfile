FROM python:alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ENV DB="django.db.backends.sqlite3"
ENV DB_PATH="./database"
ENV DB_NAME="my_database.db"

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . . 

# Apply all migrations and install all fixtures then start the server
CMD python manage.py migrate \
    && python manage.py loaddata ./fixtures/products.json \
    && python manage.py loaddata ./fixtures/stocks.json \ 
    && python manage.py loaddata ./fixtures/stock-product.json \
    && python manage.py runserver 0.0.0.0:8000

EXPOSE 8000
