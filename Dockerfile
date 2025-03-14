# Use an official Python runtime as a parent image
FROM python:3.11-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask and other dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app will run on
EXPOSE 8080

# Set the environment variable to let Flask know it's in production
ENV FLASK_ENV=production

# Command to run the application
CMD ["python", "app.py"]
