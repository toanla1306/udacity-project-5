FROM python:3.7.3-stretch
WORKDIR /app

COPY requirements.txt app.py  /app/
COPY templates /app/templates

RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt(venv)

EXPOSE 5000

CMD ["python", "app.py"]