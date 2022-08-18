FROM python:3.10.6-alpine3.16

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /mysite
COPY requirments.txt /requirments.txt

RUN pip install -r requirments.txt

COPY --chown=:djuser requirements.txt requirements.txt

COPY .mysite /mysite/



