FROM ubuntu:16.04
MAINTAINER Hugo Herter

RUN apt-get -y update && apt-get install -y python3-virtualenv virtualenv

# Install requirements
ADD requirements.txt /requirements.txt
RUN /pip install -r /requirements.txt

ADD flask_program.py /kv
WORKDIR /kv/

EXPOSE 8000
