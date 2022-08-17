FROM python:3.10.6-alpine3.16

ENV PYTHONUNBUFFERED 1

COPY ./requirments.txt /requirments.txt

RUN pip install -r /requirments.txt

RUN mkdir /mysite
WORKDIR /mysite
COPY ./mysite /mysite/

USER ec2-user

