FROM python:3.12-slim

WORKDIR /app
COPY . .

RUN pip install --upgrade pip
RUN /opt/venv/bin/pip install -r requirements.txt


CMD ["python", "app.py"]

