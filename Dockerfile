FROM tiangolo/uvicorn-gunicorn:python3.11-slim

RUN apt-get update && apt-get install -y netcat

RUN sudo apt-get install libpq-dev python-dev

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .
