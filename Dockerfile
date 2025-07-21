FROM python:3.12-slim

WORKDIR /app
COPY . .

# Upgrade pip globally (not in /opt/venv)
RUN pip install --upgrade pip

# Now install dependencies globally
RUN pip install -r requirements.txt

CMD ["python", "app.py"]

