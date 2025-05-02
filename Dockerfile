# Use an official Python image as base
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy dependencies file and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Expose the port Flask runs on
EXPOSE 4000

# Run the app
CMD ["python", "app.py"]
