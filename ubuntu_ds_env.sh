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


echo "Installing ubuntu via parallel desktop (mac osx)"
echo "plz via following link : "
"""
###################################################


# install ubuntu iso 
https://www.ubuntu.com/download/desktop

# install parallel desktop (mac osx)
https://itunes.apple.com/us/app/parallels-desktop-lite/id1085114709?mt=12

# install extended tool  (after installing ubuntu via parallel desktop)
# enable  file sharing between mac and ubuntu 
# http://kb.parallels.com/en/114127 
# In Mac menu bar go to Actions > Install Parallels Tools.
# http://kb.parallels.com/115835

###################################################
"""

echo "check ubuntu version"
lsb_release -a

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
bash Anaconda3-4.2.0-Linux-x86_64.sh
rm Anaconda3-4.2.0-Linux-x86_64.sh
echo ""
cd
echo 'export anaconda env variable (python 3)'
export PATH=~/anaconda3/bin:$PATH
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



echo "Installing ChromeDriver 2.25.426924" 
echo "###################################################"
# install chrome driver here :
# https://chromedriver.storage.googleapis.com/index.html
# https://christopher.su/2015/selenium-chromedriver-ubuntu/

sudo apt-get install unzip
sudo apt-get install xvfb
# move to te chrome driver directory 
# unzip the file 
wget -N http://chromedriver.storage.googleapis.com/2.25/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
chmod +x chromedriver
sudo mv -f chromedriver /usr/local/share/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/bin/chromedriver



echo "Installing Google Chrome 58.0.3029.110 " 
echo "###################################################"
# install google chrome app here :
# https://www.slimjet.com/chrome/google-chrome-old-version.php
# https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?viewmode=compact&topic_id=104960&forum=1

# download needed packages 
sudo apt-get install -f
# download google chrome
wget -N https://www.slimjet.com/chrome/download-chrome.php?file=lnx%2Fchrome64_58.0.3029.96.deb -O google-chrome-stable_current_amd64.deb 
sudo dpkg -i google-chrome-stable_current_amd64.deb

# check chrome driver version 
chromedriver
# check google chrome app version 
google-chrome --version













