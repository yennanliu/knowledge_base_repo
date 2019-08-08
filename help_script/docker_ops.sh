#-------------------------------------------------------------------------------------------------------
# build docker from Dockerfile -> run docker  -> commit status of docker  -> push docker image to cloud # 
#-------------------------------------------------------------------------------------------------------
# ref 
# https://towardsdatascience.com/how-docker-can-help-you-become-a-more-effective-data-scientist-7fc048ef91d5

# -- build docker from Dockerfile
#sudo docker build -t mac_ds_env -f ./Dockerfile ./
sudo docker build -t <docker_name> -f <docker_directory> ./

# -- run docker 
#docker run -it --name mac_ds_env --net=host -v ~/docker_file/:/ds mac_ds_env
docker run -it --name <docker_name> --net=host -v ~/docker_file/:/<directory_inside_docker> <image_name>

# -- commit status of docker 
#docker commit mac_ds_env yennanliu/mac_ds_env:v1
docker commit <comtainer_name> yennanliu/<docker_name>:<version>

# -- push docker image to cloud 
#docker push yennanliu/mac_ds_env:v1
docker push <docker_account>/<docker_name>:<version>

# -- list all available dockers 
docker ps -a 

# -- re-run docker 
#docker run -it mac_ds_env /bin/bash
docker run -it <docker_name> /bin/bash
