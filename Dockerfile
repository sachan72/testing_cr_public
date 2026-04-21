FROM python:3.11-slim

WORKDIR /workapp

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . /workapp

CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:appl"]
