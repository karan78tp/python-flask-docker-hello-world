FROM ubuntu:16.04
MAINTAINER Hugo Herter

RUN apt-get -y update && apt-get install -y python3-virtualenv virtualenv

# Install requirements


ADD flask_program.py /flask_program.py
WORKDIR /kv/

EXPOSE 8000
