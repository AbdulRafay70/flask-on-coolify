# Use the official lightweight Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements file first and install dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your app code
COPY . .

# Expose the port Flask will run on
EXPOSE 5000

# Run the app using gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
