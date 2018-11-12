
# Build local DE env on mac OS X 
# start with  anaconda3 python 3

# ref 
# https://blog.codeship.com/using-docker-compose-for-python-development/
# https://github.com/big-data-europe/docker-spark


#############  install anaconda3 ################

FROM continuumio/anaconda3
MAINTAINER "yen"

#############  install library ################

RUN \
	apt-get update && \
	apt-get install -y postgresql && \
	apt-get install -y openjdk-8-jdk 



RUN apt-get update && apt-get install -y libgtk2.0-dev && apt-get install wget &&\
    /opt/conda/bin/conda install jupyter -y && \
    /opt/conda/bin/conda install numpy pandas scikit-learn scipy pyyaml && \
    /opt/conda/bin/conda upgrade dask && \
    pip install --upgrade pip && \ 
    pip install psycopg2  && \
    pip install pyspark





#############  Define working directory  ################

WORKDIR /data

############# Define default command ################

CMD ["bash"]



#############  run commands  ################


#############  set up DBs  ################


# dev 











