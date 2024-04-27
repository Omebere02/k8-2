# Use the official Python image as the base image
FROM python:3.11.9-bullseye

# Set a working directory
WORKDIR /usr/src/app

# Copy current directory container into into the container at usr/srec/app
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# i will make port 500 available to world from container 
EXPOSE 5000

# define environment variable
ENV FLASK_APP=app.py
ENV [FLASK_RUN_HOST=0.0.0.0]

# Command to run application using uvicorn
CMD ["flask", "run"]