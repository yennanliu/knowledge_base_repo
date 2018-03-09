# using python 2.7 run docker 
FROM python:2.7-slim

# set working directions 
WORKDIR /app

# copy whole files currently to Docker container 
ADD . /app

# install whole needed packages as  requirements.txt list 
RUN pip install -r requirements.txt

# set 80 port forDocker connection 
EXPOSE 80

# set up environment variables 
ENV NAME World

# when Docker run, execute the app.py automatically 
CMD ["python", "app.py"]