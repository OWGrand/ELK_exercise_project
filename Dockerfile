FROM python:3.9-slim-buster

WORKDIR app/

COPY requirements.txt .
RUN python3 -m venv env
SHELL ["/bin/bash", "-c"]
RUN source env/bin/activate
RUN pip install -r requirements.txt

COPY webapp.py .

EXPOSE 5000

CMD [ "python", "webapp.py" ]
