FROM python:3.10.6-alpine3.16

RUN pip install --upgrade pip

ENV PYTHONUNBUFFERED 1

COPY ./requirments.txt /requirments.txt

RUN pip install -r /requirments.txt

RUN mkdir /mysite
WORKDIR /mysite

COPY --chown=:djuser requirements.txt requirements.txt

COPY ./mysite /mysite/

RUN adduser -D djuser
USER djuser

