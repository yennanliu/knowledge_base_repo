#!/bin/sh


# Shell that help build up python based analysis & ML env 
# python 3 

# ref : https://gist.github.com/mlgill/4302c24ad1c8999577fd2f6cd03d8d2b

echo 'install anaconda...'
echo 'plz download via  :  https://www.anaconda.com/download/#macos'

echo 'set dev env...'
# conda create -n datasci
# source activate datasci

echo 'plz make sure you are using python 3 '
echo 'your current python verison : ' # && python -c 'import sys; print (sys.version) '
python -V

echo ''
echo '--------------------------------'


echo 'install needed packages....'
echo ''
echo '--------------------------------'
pip install sqlalchemy scrapy unittest pyvirtualdisplay  beautifulsoup4

 

