FROM python:3.11.6-slim-bullseye

RUN apt update -y && apt install awscli -y
WORKDIR /app

COPY . /app
RUN pip install -r requiements.txt

CMD ["python3", "app.py"]