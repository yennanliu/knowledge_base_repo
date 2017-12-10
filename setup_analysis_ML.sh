#!/bin/sh


# Shell that help build up python based analysis & ML env 
# python 3 

echo 'install anaconda...'
echo 'plz download via  :  https://www.anaconda.com/download/#macos'

echo 'plz make sure you are using python 3 '
echo 'your current python verison : ' # && python -c 'import sys; print (sys.version) '
python -V

echo ''
echo '--------------------------------'


echo 'install needed packages....'
echo ''
echo '--------------------------------'
pip install pandas numpy sklearn scipy matplotlib SQLAlchemy seaborn


echo 'config DB'