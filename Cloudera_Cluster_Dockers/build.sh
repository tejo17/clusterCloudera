#!/bin/bash

# CREATE DATA VOLUMES
mkdir -p /etc/Cloudera_Pseudo_Cluster/headnode1/data
mkdir -p /etc/Cloudera_Pseudo_Cluster/datanode1/data
mkdir -p /etc/Cloudera_Pseudo_Cluster/datanode2/data
mkdir -p /etc/Cloudera_Pseudo_Cluster/datanode3/data
mkdir -p /etc/Cloudera_Pseudo_Cluster/mysql_files

# ADD SQL RELATED FILES TO VOLUMES
cp ./HeadNodes/create_databases.sql /etc/Cloudera_Pseudo_Cluster/mysql_files/
cp ./HeadNodes/my.cnf /etc/Cloudera_Pseudo_Cluster/mysql_files/

# ADD HOSTS FOR THE DOCKER CLUSTER NETWORK
bash -c "cat docker_cluster_hosts >> /etc/hosts"

# BUILD IMAGES
docker-compose build
    


