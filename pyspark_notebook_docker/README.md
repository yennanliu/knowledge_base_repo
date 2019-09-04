# Source  
- Modify from  
	- https://github.com/jupyter/docker-stacks/tree/master/pyspark-notebook

# Quick start 
```bash
cd ~ && git clone https://github.com/yennanliu/data_science_repo.git
cd ~ &&  cd data_science_repo/pyspark_notebook_docker
# docker build 
docker build . -t pyspark_notebook_docker
# docker run 
docker run -p 8888:8888 -p 4040:4040 -p 4041:4041 pyspark_notebook_docker
```

[![docker pulls](https://img.shields.io/docker/pulls/jupyter/pyspark-notebook.svg)](https://hub.docker.com/r/jupyter/pyspark-notebook/) [![docker stars](https://img.shields.io/docker/stars/jupyter/pyspark-notebook.svg)](https://hub.docker.com/r/jupyter/pyspark-notebook/) [![image metadata](https://images.microbadger.com/badges/image/jupyter/pyspark-notebook.svg)](https://microbadger.com/images/jupyter/pyspark-notebook "jupyter/pyspark-notebook image metadata")

# Jupyter Notebook Python, Spark, Mesos Stack

Please visit the documentation site for help using and contributing to this image and others.

* [Jupyter Docker Stacks on ReadTheDocs](http://jupyter-docker-stacks.readthedocs.io/en/latest/index.html)
* [Selecting an Image :: Core Stacks :: jupyter/pyspark-notebook](http://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-pyspark-notebook)
* [Image Specifics :: Apache Spark](http://jupyter-docker-stacks.readthedocs.io/en/latest/using/specifics.html#apache-spark)
