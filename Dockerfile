FROM tiangolo/uvicorn-gunicorn:python3.8-slim

RUN apt-get update && apt-get install -y netcat

COPY requirements.txt .

RUN apt-get install libpq-dev python3-dev -y

RUN pip install -r requirements.txt

COPY . .
