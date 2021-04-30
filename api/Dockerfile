FROM python:3

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY . .

RUN pip install django djangorestframework psycopg2 django-cors-headers

EXPOSE 8000

CMD [ "sh", "start.sh" ]