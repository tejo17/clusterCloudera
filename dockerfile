FROM ubuntu:latest

RUN apt-get -y update; \
    apt-get -y upgrade; \
    apt-get -y install docker.io; \
    apt-get -y install docker-compose;
CMD ["bash"]