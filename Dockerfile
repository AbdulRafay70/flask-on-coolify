FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Install system dependencies (just in case)
RUN apt-get update && apt-get install -y --no-install-recommends gcc

# Copy files
COPY . .

# Upgrade pip (this pip is global and guaranteed to exist)
RUN pip install --upgrade pip

# Install Python dependencies
RUN pip install -r requirements.txt

# Expose port (Coolify listens to this)
EXPOSE 5000

# Start the app using gunicorn (if you're using Flask app: app.py with app = Flask(...))
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
