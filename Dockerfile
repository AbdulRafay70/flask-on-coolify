FROM python:3.12-slim

WORKDIR /app
COPY . .

# Create virtual environment
RUN python -m venv /opt/venv

# Activate venv and upgrade pip
RUN /opt/venv/bin/pip install --upgrade pip

# Install requirements into venv
RUN /opt/venv/bin/pip install -r requirements.txt

# Make sure the app runs using venv Python
CMD ["/opt/venv/bin/python", "app.py"]
