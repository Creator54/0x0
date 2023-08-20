FROM python:3.10

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

ENV FLASK_APP=fhost

CMD flask db upgrade && flask run --host=0.0.0.0 --port=5001

