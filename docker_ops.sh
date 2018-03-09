


# ref 
# https://towardsdatascience.com/how-docker-can-help-you-become-a-more-effective-data-scientist-7fc048ef91d5






# -- build docker from Dockerfile
#sudo docker build -t mac_ds_env -f ./Dockerfile ./
sudo docker build -t 'docker_name' -f 'docker_directory' ./



# -- run docker 
docker run -it --name mac_ds_env --net=host -v ~/docker_file/:/ds mac_ds_env