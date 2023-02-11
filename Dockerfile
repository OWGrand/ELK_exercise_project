FROM python:3.9-slim-buster

WORKDIR app/

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY webapp.py .

EXPOSE 5000

CMD [ "python", "webapp.py" ]
