# Use an official Python runtime as a base image
FROM python:3.12.12-slim
 
# Set the working directory in the container
WORKDIR /app
 
# Copy the requirements file into the container
COPY requirements.txt .
 
# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt
 
# Copy the Flask application code into the container
COPY . .
 
# Expose the port Flask runs on (default 5000)
EXPOSE 5000
 
# Command to run the Flask application
CMD ["python", "app.py"]
