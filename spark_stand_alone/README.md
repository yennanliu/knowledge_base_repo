## Spark stand alone docker 

### Quick start 
```bash
cd ~ && git clone https://github.com/yennanliu/data_science_repo.git
cd ~ && cd data_science_repo/spark_stand_alone 
# docker build 
docker build . -t spark_env 
# run pyspark shell 
# docker run -it <image_id> ./bin/pyspark

# run spark scala shell
# docker run -it <image_id> spark-shell 

```

### Modify from 
- https://github.com/CoorpAcademy/docker-pyspark