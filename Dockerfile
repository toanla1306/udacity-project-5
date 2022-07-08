FROM python:3.7.3-stretch
WORKDIR /app

COPY requirements.txt app.py  /app/
COPY templates /app/

RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

CMD ["python", "app.py"]