# DS/DE Dockerfile

### Dockerhub
https://hub.docker.com/u/yennanliu

### Local data engineer environment (astro airflow)
[de_airflow_docker](https://github.com/yennanliu/data_science_repo/blob/master/de_airflow_docker/Dockerfile)

```bash

# https://www.astronomer.io/docs/getting-started/

# STEP 1) Install go 
brew install go
# STEP 2) get astronomer CLI
curl -sL https://install.astronomer.io | sudo bash
# STEP 3) verify install success 
astro 
# STEP 4) get repo 
git clone https://github.com/yennanliu/data_science_repo.git &&  cd data_science_repo/de_airflow_docker
# STEP 5) init airflow 
astro airflow init  
# STEP 6) start airflow
astro airflow start
# STEP 7) show the docker image list  and get the docker container id 
# docker ps -a  
# STEP 8-1) visit airflow UI 
# open http://localhost:8080/admin/ in browser  
# STEP 8-2) access the bash in docker image 
# e.g. docker exec -it  4ca916bba31e bash 
docker exec -it <docker_container_id> bash 

```


### Local data science ML environment (docker)

[mac_ds_ml_docker](https://github.com/yennanliu/data_science_repo/blob/master/mac_ds_ml_docker/Dockerfile)

```bash

# step 1  install docker

#https://docs.docker.com/docker-for-mac/install/#download-docker-for-mac
#https://hub.docker.com/r/yennanliu/mac_ds_ml_env/
# step 2  pull the docker image
# https://stackoverflow.com/questions/45952630/error-response-from-daemon-manifest-for-ibmblockchain-fabric-peerlatest-not-fo 
docker pull yennanliu/mac_ds_ml_env:v1
# step 3
# list all containers 
docker images 
# list all dockers 
docker ps 
# step 4 
# launch container 
docker run  yennanliu/mac_ds_ml_env:v1 
# run image 
docker run -it yennanliu/mac_ds_ml_env:v1 bash 

```


### Local data science DL environment (docker)

[mac_ds_dl_docker](https://github.com/yennanliu/data_science_repo/blob/master/mac_ds_dl_docker/Dockerfile)

```bash
# dev 

```


### Local data engineer environment (docker)

[mac_de_docker](https://github.com/yennanliu/data_science_repo/tree/master/mac_de_docker)

```bash
# dev 
# https://github.com/InsightDataScience/docker-workshop

docker pull yennanliu/mac_de_env:v1 
docker images 
docker ps 
docker run  yennanliu/mac_de_env:v1 
# run image 
docker run -it yennanliu/mac_de_env:v1 bash 

```


### Ubuntu Scrapper environment (docker)

[ubuntu_scrapper_docker](https://github.com/yennanliu/data_science_repo/blob/master/ubuntu_scrapper_docker/Dockerfile)

```bash

# pull the docker image 
#docker run -p 4000:80 yennanliu/ubuntu_scrapper:V1 
docker pull yennanliu/ubuntu_scrapper
# run docker env 
docker run -it yennanliu/ubuntu_scrapper bash 

```