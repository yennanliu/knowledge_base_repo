#!/bin/sh

#################################################################
# SHELL SCRIPT DEPLOY DOCKER IMAGE TO DOCKER HUB 
#################################################################

echo ' ---------------- DEPLOY TO DOCKER HUB ----------------'

declare -a docker_images=("spark_stand_alone/." "pyspark_notebook_docker/.")

echo "$REGISTRY_PASS" | docker login  --username $REGISTRY_USER --password $REGISTRY_PASS && echo "docker login OK" || echo "docker login failed"

for docker_image in "${docker_images[@]}"
  do 
    instance_name="$(cut -d'/' -f1 <<<"$docker_image")"
    container_id="` docker ps -a | awk 'FNR == 2 {print $1}'`" && echo container_id = $container_id && image_id="` docker ps -a | awk 'FNR == 2 {print $2}'`" && echo image_id = $image_id 
    # docker deploy 
    echo 'COMMIT & DEPLOY  : ' $docker_image  && docker commit $container_id yennanliu/$instance_name:V1 && docker push yennanliu/$instance_name:V1
  done 