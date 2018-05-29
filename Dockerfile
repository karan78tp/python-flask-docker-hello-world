FROM ubuntu:16.04


RUN apt-get -y update && apt-get install -y python3-virtualenv virtualenv

# Install requirements


COPY flask_program.py /kv/flask_program.py
WORKDIR /kv


EXPOSE 5000

