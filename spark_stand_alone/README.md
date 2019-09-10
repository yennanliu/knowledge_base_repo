## Spark stand alone docker 

### Quick start 
```bash
cd ~ && git clone https://github.com/yennanliu/data_science_repo.git
cd ~ && cd data_science_repo/spark_stand_alone 
# docker build 
docker build . -t spark_env 

# ACCESS SPARK 1) :run pyspark shell 
docker run -it <image_id> ./bin/pyspark

# ACCESS SPARK 2)  run spark scala shell
docker run -it <image_id> spark-shell 

```

### TODO
1. Install scala
2. Fix to install DB 

### Modify from 
- https://github.com/CoorpAcademy/docker-pyspark