FROM ubuntu

# Install Ruby.
RUN \
  apt-get update && \
  apt-get install -y ruby\
  apt-get install wget

RUN apt-get update

# basics
RUN apt-get install -y openssl

# install homebrew 
RUN apt-get install curl
RUN /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

########## R ##########
RUN mkdir -p /opt
ADD install_R.sh /opt/
RUN chmod +x /opt/install_R.sh
RUN /opt/install_R.sh