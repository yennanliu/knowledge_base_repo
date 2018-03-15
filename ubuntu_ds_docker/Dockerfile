FROM ubuntu

# Install Ruby.
RUN \
  apt-get update && \
  apt-get install -y ruby

RUN apt-get update

# basics
RUN apt-get install -y openssl

# install homebrew 
RUN apt-get install curl
RUN /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"