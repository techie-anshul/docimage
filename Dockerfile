# Use the official Python 3.12 image as the base image
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements and application code into the container
COPY app.py /app

# Install Flask
RUN pip install Flask

# Set the command to run the application
CMD ["python", "app.py"]
