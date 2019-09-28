FROM ubuntu:latest

RUN apt-get -y update; \
    apt-get -y upgrade; \
    apt-get -y install docker.io \
    apt-get -y install docker-compose \
    htop;
RUN git clone https://github.com/tejo17/clusterCloudera.git
RUN cd clusterCloudera/Cloudera_Cluster_Dockers/
RUN ./build.sh
RUN ./up.sh
CMD ["bash"]