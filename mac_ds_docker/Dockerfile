# Build local DS env on mac OS X 
# start with  anaconda3 python 3


#############  install anaconda3 ################

FROM continuumio/anaconda3
MAINTAINER "???"

#############  install library ################

RUN apt-get update && apt-get install -y libgtk2.0-dev && \
    rm -rf /var/lib/apt/lists/* && \
    /opt/conda/bin/conda install jupyter -y && \
    /opt/conda/bin/conda install -c menpo opencv3 -y && \
    /opt/conda/bin/conda install numpy pandas scikit-learn matplotlib seaborn pyyaml h5py keras -y && \
    /opt/conda/bin/conda upgrade dask && \
    pip install tensorflow imutils numpy scipy pandas matplotlib seaborn


#############  run commands  ################

RUN ["mkdir", "notebooks"]

COPY jupyter_notebook_config.py /root/.jupyter/
COPY run_jupyter.sh /

# Jupyter and Tensorboard ports
EXPOSE 8888 6006

# Store notebooks in this mounted directory
VOLUME /notebooks


#############  run notebook  ################

CMD ["/run_jupyter.sh"]












