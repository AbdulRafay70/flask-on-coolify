FROM ghcr.io/railwayapp/nixpacks:ubuntu-1741046653

WORKDIR /app

# Copy your code
COPY . .

# Install Python and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Install requirements
RUN pip3 install --upgrade pip && \
    pip3 install -r requirements.txt

CMD ["python3", "app.py"]
