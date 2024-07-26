# Docimage
We will create a sample Hello World Docker image from scratch

# Sample Flask Web Application with Python 3.12

This project demonstrates how to deploy a simple Flask web application using Docker with Python 3.12.

## App Functionality

The web application is a simple Flask app that displays "Hello, World!" when accessed on the main page.

## Author

**Roll Number**: G23AI2066

## How to Build and Run

### Prerequisites

  Docker installed on your system

# Create a Directory for Docker Image

```bash
mkdir docimage
cd docimage
```

### Steps to Build and Run the Application

1: **Create the Flask Application**

   First, we need to create a Python file for our Flask application. This file will define the 
   web server and the route for our app.

   Use the following command to create the app.py in the folder docimage:

   ```bash
   nano app.py
   ```
   Copy the below following python code in app.py:
   
   ```bash
   from flask import Flask
   
   app = Flask(__name__)

   @app.route('/')
   def hello_world():
      return 'Hello, World!'

   if __name__ == '__main__':
      app.run(host='0.0.0.0', port=5000)
   ```

2. **Build the Docker Image**

   Run the following command to build the Docker image:

   ```bash
   docker build -t docimage:3.12 .
   ```

3. **Run the Docker Container**

   Use the following command to run the Docker container:

   ```bash
   docker run -p 5000:5000 docimage:3.12
   ```

4. **Access the Application**

   Open a web browser and visit `http://localhost:5000` to see the application in action.

## Explanation of the Process

1. **Dockerfile Creation**

   We created a Dockerfile that builds a Docker image using Python 3.12-slim. This image includes the minimal Debian-based environment needed to run Python 3.12.

2. **Building the Docker Image**

   We used the `docker build` command to create an image named `docimage:3.12`.

3. **Running the Docker Container**

   We used the `docker run` command to start a container from the image and map the container's port to the host.

## Conclusion

This project demonstrates how to deploy a simple web application using Docker, creating images using Python 3.12.
 The process includes setting up a basic Flask application, writing a Dockerfile, building the image, 
and running the application inside a Docker container.
