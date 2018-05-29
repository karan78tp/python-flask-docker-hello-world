FROM ubuntu:16.04
MAINTAINER Hugo Herter

RUN apt-get -y update && apt-get install -y python3-virtualenv virtualenv

# Install requirements


COPY . /kv
WORKDIR /kv


EXPOSE 8000
