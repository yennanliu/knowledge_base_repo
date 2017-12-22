#!/bin/sh

# set up data science env in ubnutu machine 

# python 
	# DS
	# scraping 
# R 
# DB 
# JS (optional)
# JAVA (optional)



echo ""
echo "###################################################"
echo "This shel will setup a new Ubuntu Desktop instance as a data science env"
echo "This script will install and configure the following tools:"
echo " - Anaconda"
echo " - Jupyter Notebook (formerly IPython)"
echo " - R"
echo " - "
echo ""
echo ""
echo ""
echo "###################################################"
echo ""



echo "Installing apt-get." 
echo "###################################################"
echo ""
# https://askubuntu.com/questions/860375/installing-apt-get
wget http://security.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.0.1ubuntu2.17_amd64.deb -O apt.deb
sudo dpkg -i apt.deb


echo "Installing Anaconda." 
echo "###################################################"
echo ""
# can change anadonda versions 
# via  https://repo.continuum.io/archive/
cd ~ 
wget https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh
bash Anaconda3-4.2.0-Linux-x86_64.sh -b -p /opt/anaconda3
rm Anaconda3-4.2.0-Linux-x86_64.sh
echo ""
cd
echo 'export PATH="~/anaconda/bin:$PATH"' >> ~/.bashrc 
echo ""
# Refresh basically
source .bashrc

conda update conda


echo "Installing python DS packages." 
echo "###################################################"
echo ""

pip install pandas numpy jupyter  




echo "Installing python scraping packages." 
echo "###################################################"
echo ""

pip install sqlalchemy scrapy unittest pyvirtualdisplay beautifulsoup4 selenium


echo "Installing web driver." 
echo "###################################################"
echo ""
# dev 







