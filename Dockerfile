# Use public ECR Python base image
FROM public.ecr.aws/docker/library/python:3.10-slim-buster

# Set working directory
WORKDIR /src

# Copy requirements and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy all app files from repo root
COPY . .

# Run the application
CMD ["python", "app.py"]
