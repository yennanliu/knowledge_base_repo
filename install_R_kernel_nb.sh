#!/bin/sh



# ref 
# https://discuss.analyticsvidhya.com/t/how-to-run-r-on-jupyter-ipython-notebooks/5512

# step 1) Download Anaconda 
# https://www.continuum.io/downloads
# step 2) Download R kernel 
# update notebook library 
conda update ipython-notebook
# create R env 
conda create -n python_R python=3
# activate R env 
source activate python_R
conda install -c r ipython-notebook r-irkernel
# step 3) test running 
R  
# ------------ below commands is under R env (R command line) ------------ #
# step 4) intall other needed libraries under R command line 
# https://www.r-bloggers.com/installing-r-packages/
# installing to /Users/yennanliu/anaconda3/envs/python_R/lib/R/library/utf8/libs
install.packages(c('rzmq','repr','IRkernel','IRdisplay'), repos = 'http://irkernel.github.io/', type = 'source')
# step 5) After the packages are successfully downloaded and installed. Type this:
IRkernel::installspec()
# step 6) 
quit()
# step 7) run R via ipython notebook 
ipython notebook





