@@ -1,15 +1,11 @@
# Use public ECR Python base image
FROM public.ecr.aws/docker/library/python:3.10-slim-buster
FROM python:3.10-slim-bullseye

# Set working directory
WORKDIR /src

# Copy requirements and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY ./app/requirements.txt requirements.txt

# Copy all app files from repo root
COPY . .
RUN pip install -r requirements.txt

# Run the application
CMD ["python", "app.py"]
COPY ./app .

CMD python app.py
