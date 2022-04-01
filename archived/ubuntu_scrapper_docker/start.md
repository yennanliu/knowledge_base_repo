### Build docker image 

```bash 
### move to docker file path 
cd /data_science_repo/ubuntu_docker
### https://yeasy.gitbooks.io/docker_practice/content/image/build.html
#docker build - < Dockerfile
docker build -t yennanliu/ubuntu_scrapper:V1  - < Dockerfile
```

### Docker run 

```bash 
```

### Push to docker cloud 

```bash 
#login first 
docker login 
# enter ur username and password 
# push 
docker push yennanliu/ubuntu_scrapper:V1
```