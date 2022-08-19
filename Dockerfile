FROM python:3.10.6-alpine3.16

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /mysite
COPY requirments.txt /mysite/

RUN pip install -r requirments.txt && virtualenv -p python3 venv 

CMD ["venv/Scripts/activate" ]

COPY . /mysite/

EXPOSE 8000
#RUN pwd
#RUN chmod 775 


CMD [ "python", "/mysite/manage.py", "runserver", " 0.0.0.0:8000"]

#venv\Scripts\activate
#virtualenv -p python3 venv
#pip install virtualenv


