FROM python:3.8.7

ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code
#
RUN pip install --upgrade pip

RUN pip install django-oscar==2.1 \
    && pip install django-oscar-paypal \
    && pip install asgiref \
    && pip install cloudinary \
    && pip install django-cloudinary-storage \
    && pip install django-haystack \
    && pip install django-heroku \
    && pip install gunicorn \
    && pip install install \
    && pip install pysolr \
    && pip install sorl-thumbnail \
    && pip install whitenoise

EXPOSE 8000

ADD . /code/