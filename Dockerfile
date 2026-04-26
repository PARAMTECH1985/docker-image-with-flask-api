# 1. Use an official Python runtime as a parent image
FROM python:3.11-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy the rest of your application code
COPY . .

# 5. Start the Docker
# Inform Docker that the container listens on port 5000
EXPOSE 5000

# 6. Specify the command to run your script
CMD ["python", "app.py"]

