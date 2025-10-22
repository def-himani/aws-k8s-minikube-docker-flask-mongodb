# Base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose Flask port
EXPOSE 5000

# Set environment variables for MongoDB connection
ENV MONGO_HOST=mongodb
ENV MONGO_PORT=27017

# Run the app
CMD ["python", "app.py"]