FROM python:3.11.1-slim

RUN apt-get update && apt-get install -y netcat

RUN apt-get install libpq-dev python-dev -y

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .
