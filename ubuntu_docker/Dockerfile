# build docker for web scrapper (ubuntu)
# apps 
# ChromeDriver 2.25.426924
# Google Chrome 58.0.3029.110
# Anaconda3-4.2.0-Linux-x86_64 

# reference: https://hub.docker.com/_/ubuntu/
FROM ubuntu:16.04

# Adds metadata to the image as a key value pair example LABEL version="1.0"
LABEL maintainer="yennanliu <www.github.com/yennanliu>"

##Set environment variables
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get update --fix-missing && apt-get install -y wget bzip2 ca-certificates \
    build-essential \
    byobu \
    curl \
    git-core \
    htop \
    pkg-config \
    python3-dev \
    python3-pip \
    python-setuptools \
    python-virtualenv \
    unzip \
    && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*

RUN echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
    wget --quiet https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh -O ~/anaconda.sh && \
    /bin/bash ~/anaconda.sh -b -p /opt/conda 


ENV PATH /opt/conda/bin:$PATH

RUN pip3 --no-cache-dir install --upgrade \
        altair \
        sqlalchemy \
        scrapy \ 
        pyvirtualdisplay \
        beautifulsoup4 \
        selenium \ 
        pandas 

# Open Ports for Jupyter
EXPOSE 7745

#Setup File System
#sharing file (docker ubuntu & max os) : docker_ubuntu_file
RUN mkdir docker_ubuntu_file
ENV HOME=/docker_ubuntu_file
ENV SHELL=/bin/bash
VOLUME /docker_ubuntu_file
WORKDIR /docker_ubuntu_file
#ADD run_jupyter.sh /docker_ubuntu_file/run_jupyter.sh
#RUN chmod +x /docker_ubuntu_file/run_jupyter.sh

# Run the shell
#CMD  ["./run_jupyter.sh"]
