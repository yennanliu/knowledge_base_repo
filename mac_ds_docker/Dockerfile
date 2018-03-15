# Build local DS env on mac OS X 
# using python 3 run docker 
### todo : install python via anaconda ###


# install Homebrew 

#RUN ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# clean and update sources
#RUN apt-get clean && apt-get update


########## python ##########

FROM python:3.5

# -- set working directions 
WORKDIR /app
WORKDIR /workspace

# -- copy whole files currently to Docker container 
ADD . /app

# -- install packages
# analysis 
RUN pip3 install numpy scipy pandas matplotlib seaborn jupyter
# ML
RUN pip3 install scikit-learn 
# DL
RUN pip3 install tensorflow pillow h5py keras 
# ops 
RUN pip3 install beautifulsoup4 psycopg2 SQLAlchemy urllib3 Scrapy selenium



########## R ##########
#RUN mkdir -p /opt
#ADD install_R.sh /opt/
#RUN chmod +x /opt/install_R.sh
#RUN /opt/install_R.sh



# -- set 80 port forDocker connection 
EXPOSE 80

# -- set up environment variables 
#ENV NAME World

# -- when Docker run, execute the app.py automatically 
#CMD ["python", "app.py"]
#CMD ["/bin/bash"]










