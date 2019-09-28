@echo off
echo Empaquetando Docker!!!!

docker build -t cluster-cloudera . 

echo Lanzando y cargando el docker...

docker run -p 7180:7180 cluster-cloudera 
