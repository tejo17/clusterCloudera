#!/bin/bash
sudo docker build -t cluster-cloudera . && sudo docker run -p 7180:7180 cluster-cloudera 