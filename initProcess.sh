#!/bin/bash
sudo docker build -t cluster-cloudera . && sudo docker run cluster-cloudera && cd Cloudera_Cluster_Dockers && ./build.sh && ./up.sh;