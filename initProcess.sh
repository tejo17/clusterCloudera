#!/bin/bash
sudo docker build -t cluster-cloudera .
sudo docker run cluster-cloudera
