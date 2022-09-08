FROM ubuntu:20.04

WORKDIR /usr/src/app

COPY 1-8.sh .

RUN chmod +x 1-8.sh

RUN apt update

RUN apt -y install curl

CMD ./1-8.sh