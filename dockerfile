FROM ubuntu:latest

RUN apt-get -y update; \
    apt-get -y upgrade; \
    apt-get -y install docker.io; \
    apt-get -y install docker-compose;
RUN cd clusterCloudera/Cloudera_Cluster_Dockers; \
    ./build.sh; \
    ./up.sh;
CMD ["bash"]
