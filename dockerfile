# Use Python base image
FROM python:3.9-slim

# Set working directory inside container
WORKDIR /app

# Copy dependency list and install
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy all project files into container
COPY . .

# Command to run app
CMD ["python", "app.py"]

