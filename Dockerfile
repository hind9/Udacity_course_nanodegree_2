FROM python:3.10-slim-bullseye

WORKDIR /src

COPY ./requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD ["requirements.txt", "app.py"]
