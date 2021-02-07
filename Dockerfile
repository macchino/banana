FROM python:3.8.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
#
RUN pip install --upgrade pip

RUN pip install django-oscar-paypal

EXPOSE 8000

ADD . /code/