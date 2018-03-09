### Steps 


#### Step 1) Build 
```bash
(ds_dash) yennanliu@yennanliude-MacBook-Pro:~/data_science_repo/mac_ds_docker$ sudo docker build -t mac_ds_env -f ./Dockerfile ./
Sending build context to Docker daemon  2.56 kB
Step 1 : FROM python:3.5
3.5: Pulling from library/python
4176fe04cefe: Pull complete 
851356ecf618: Pull complete 
6115379c7b49: Pull complete 
aaf7d781d601: Pull complete 
40cf661a3cc4: Pull complete 
c6412d075d20: Pull complete 
236fd660fa88: Pull complete 
6a6a916732c5: Pull complete 
Digest: sha256:0456b412c50ee07b75d589b249769b8f650e4c5eb49771aeccc1c439a7846e42
Status: Downloaded newer image for python:3.5
 ---> 7721d6b4045f
Step 2 : WORKDIR /app
 ---> Running in f1e98e11789a
 ---> 797e96ce2700
Removing intermediate container f1e98e11789a
Step 3 : WORKDIR /workspace
 ---> Running in 0b5dc5aa5f06
 ---> 71ef94b17733
Removing intermediate container 0b5dc5aa5f06
Step 4 : ADD . /app
 ---> b17cdf67c850
Removing intermediate container 7709f87bb23e
Step 5 : RUN pip3 install numpy scipy pandas matplotlib scikit-learn
 ---> Running in 8ee19c28f899
Collecting numpy
  Downloading numpy-1.14.1-cp35-cp35m-manylinux1_x86_64.whl (12.1MB)
Collecting scipy
  Downloading scipy-1.0.0-cp35-cp35m-manylinux1_x86_64.whl (49.6MB)
Collecting pandas
  Downloading pandas-0.22.0-cp35-cp35m-manylinux1_x86_64.whl (25.7MB)
Collecting matplotlib
  Downloading matplotlib-2.2.0-cp35-cp35m-manylinux1_x86_64.whl (12.5MB)
Collecting scikit-learn
  Downloading scikit_learn-0.19.1-cp35-cp35m-manylinux1_x86_64.whl (12.2MB)
Collecting pytz>=2011k (from pandas)
  Downloading pytz-2018.3-py2.py3-none-any.whl (509kB)
Collecting python-dateutil>=2 (from pandas)
  Downloading python_dateutil-2.6.1-py2.py3-none-any.whl (194kB)
Collecting kiwisolver>=1.0.1 (from matplotlib)
  Downloading kiwisolver-1.0.1-cp35-cp35m-manylinux1_x86_64.whl (949kB)
Collecting cycler>=0.10 (from matplotlib)
  Downloading cycler-0.10.0-py2.py3-none-any.whl
Collecting six>=1.10 (from matplotlib)
  Downloading six-1.11.0-py2.py3-none-any.whl
Collecting pyparsing!=2.0.4,!=2.1.2,!=2.1.6,>=2.0.1 (from matplotlib)
  Downloading pyparsing-2.2.0-py2.py3-none-any.whl (56kB)
Requirement already satisfied: setuptools in /usr/local/lib/python3.5/site-packages (from kiwisolver>=1.0.1->matplotlib)
Installing collected packages: numpy, scipy, pytz, six, python-dateutil, pandas, kiwisolver, cycler, pyparsing, matplotlib, scikit-learn
Successfully installed cycler-0.10.0 kiwisolver-1.0.1 matplotlib-2.2.0 numpy-1.14.1 pandas-0.22.0 pyparsing-2.2.0 python-dateutil-2.6.1 pytz-2018.3 scikit-learn-0.19.1 scipy-1.0.0 six-1.11.0


 ---> 52d3da0a400f
Removing intermediate container 8ee19c28f899
Step 6 : RUN pip3 install tensorflow pillow h5py keras
 ---> Running in 640802ec5cdc
Collecting tensorflow
  Downloading tensorflow-1.6.0-cp35-cp35m-manylinux1_x86_64.whl (45.8MB)
Collecting pillow
  Downloading Pillow-5.0.0-cp35-cp35m-manylinux1_x86_64.whl (5.9MB)
Collecting h5py
  Downloading h5py-2.7.1-cp35-cp35m-manylinux1_x86_64.whl (5.3MB)
Collecting keras
  Downloading Keras-2.1.5-py2.py3-none-any.whl (334kB)
Collecting gast>=0.2.0 (from tensorflow)
  Downloading gast-0.2.0.tar.gz
Collecting absl-py>=0.1.6 (from tensorflow)
  Downloading absl-py-0.1.11.tar.gz (80kB)
Collecting tensorboard<1.7.0,>=1.6.0 (from tensorflow)
  Downloading tensorboard-1.6.0-py3-none-any.whl (3.0MB)
Collecting termcolor>=1.1.0 (from tensorflow)
  Downloading termcolor-1.1.0.tar.gz
Collecting grpcio>=1.8.6 (from tensorflow)
  Downloading grpcio-1.10.0-cp35-cp35m-manylinux1_x86_64.whl (7.5MB)
Requirement already satisfied: wheel>=0.26 in /usr/local/lib/python3.5/site-packages (from tensorflow)
Collecting astor>=0.6.0 (from tensorflow)
  Downloading astor-0.6.2-py2.py3-none-any.whl
Requirement already satisfied: numpy>=1.13.3 in /usr/local/lib/python3.5/site-packages (from tensorflow)
Collecting protobuf>=3.4.0 (from tensorflow)
  Downloading protobuf-3.5.2-cp35-cp35m-manylinux1_x86_64.whl (6.4MB)
Requirement already satisfied: six>=1.10.0 in /usr/local/lib/python3.5/site-packages (from tensorflow)
Collecting pyyaml (from keras)
  Downloading PyYAML-3.12.tar.gz (253kB)
Requirement already satisfied: scipy>=0.14 in /usr/local/lib/python3.5/site-packages (from keras)
Collecting werkzeug>=0.11.10 (from tensorboard<1.7.0,>=1.6.0->tensorflow)
  Downloading Werkzeug-0.14.1-py2.py3-none-any.whl (322kB)
Collecting bleach==1.5.0 (from tensorboard<1.7.0,>=1.6.0->tensorflow)
  Downloading bleach-1.5.0-py2.py3-none-any.whl
Collecting html5lib==0.9999999 (from tensorboard<1.7.0,>=1.6.0->tensorflow)
  Downloading html5lib-0.9999999.tar.gz (889kB)
Collecting markdown>=2.6.8 (from tensorboard<1.7.0,>=1.6.0->tensorflow)
  Downloading Markdown-2.6.11-py2.py3-none-any.whl (78kB)
Requirement already satisfied: setuptools in /usr/local/lib/python3.5/site-packages (from protobuf>=3.4.0->tensorflow)
Building wheels for collected packages: gast, absl-py, termcolor, pyyaml, html5lib
  Running setup.py bdist_wheel for gast: started
  Running setup.py bdist_wheel for gast: finished with status 'done'
  Stored in directory: /root/.cache/pip/wheels/8e/fa/d6/77dd17d18ea23fd7b860e02623d27c1be451521af40dd4a13e
  Running setup.py bdist_wheel for absl-py: started
  Running setup.py bdist_wheel for absl-py: finished with status 'done'
  Stored in directory: /root/.cache/pip/wheels/3c/0f/0a/6c94612a8c26070755559045612ca3645fea91c11f2148363e
  Running setup.py bdist_wheel for termcolor: started
  Running setup.py bdist_wheel for termcolor: finished with status 'done'
  Stored in directory: /root/.cache/pip/wheels/de/f7/bf/1bcac7bf30549e6a4957382e2ecab04c88e513117207067b03
  Running setup.py bdist_wheel for pyyaml: started
  Running setup.py bdist_wheel for pyyaml: finished with status 'done'
  Stored in directory: /root/.cache/pip/wheels/2c/f7/79/13f3a12cd723892437c0cfbde1230ab4d82947ff7b3839a4fc
  Running setup.py bdist_wheel for html5lib: started
  Running setup.py bdist_wheel for html5lib: finished with status 'done'
  Stored in directory: /root/.cache/pip/wheels/6f/85/6c/56b8e1292c6214c4eb73b9dda50f53e8e977bf65989373c962
Successfully built gast absl-py termcolor pyyaml html5lib
Installing collected packages: gast, absl-py, werkzeug, html5lib, bleach, protobuf, markdown, tensorboard, termcolor, grpcio, astor, tensorflow, pillow, h5py, pyyaml, keras
Successfully installed absl-py-0.1.11 astor-0.6.2 bleach-1.5.0 gast-0.2.0 grpcio-1.10.0 h5py-2.7.1 html5lib-0.9999999 keras-2.1.5 markdown-2.6.11 pillow-5.0.0 protobuf-3.5.2 pyyaml-3.12 tensorboard-1.6.0 tensorflow-1.6.0 termcolor-1.1.0 werkzeug-0.14.1
 ---> e2ad57a74557
Removing intermediate container 640802ec5cdc
Step 7 : EXPOSE 80
 ---> Running in a76ff7a1fa68
 ---> 49d6a2c2ed8d
Removing intermediate container a76ff7a1fa68
Successfully built 49d6a2c2ed8d
(ds_dash) yennanliu@yennanliude-MacBook-Pro:~/data_science_repo/mac_ds_docker$ 

```


#### Step 2) Run 
```bash
(ds_dash) yennanliu@yennanliude-MacBook-Pro:~/data_science_repo/mac_ds_docker$ docker run -it --name mac_ds_env --net=host -v ~/docker_file/:/ds mac_ds_env
Python 3.5.5 (default, Feb 17 2018, 09:37:53) 
[GCC 4.9.2] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> print (123)
>>> 123
```


#### Step 3) Commit  
```bash
(ds_dash) yennanliu@yennanliude-MacBook-Pro:~/data_science_repo/mac_ds_docker$ docker commit mac_ds_env yennanliu/mac_ds_env:v1

sha256:fe94f717aac00ea3c011f35aa77d724712270d7fe82b83937ab355773ec93665
(ds_dash) yennanliu@yennanliude-MacBook-Pro:~/data_science_repo/mac_ds_docker$ 

```



#### Step 4) Push  
```bash
(ds_dash) yennanliu@yennanliude-MacBook-Pro:~/data_science_repo/mac_ds_docker$ docker push yennanliu/mac_ds_env:v1
The push refers to a repository [docker.io/yennanliu/mac_ds_env]

ba58de9122a2: Pushed 
919729a6e109: Pushed 
e80f5ed4d2d1: Pushed 
6a41ad5377b1: Pushed 
d6cc72a770c0: Pushed 
cb86232ae037: Pushed 
f06a7b64ab64: Mounted from library/python 
ebaf86a49008: Mounted from library/python 
342345c8c650: Mounted from library/python 
09fc3edb847c: Mounted from library/python 
6b60013e5875: Mounted from library/python 
d6335a641f5e: Mounted from library/python 
5c33df241050: Mounted from library/python 
ffc4c11463ee: Mounted from library/python 
v1: digest: sha256:69691b690fed44d8256d337cccdbab6700b34e22b54e351739a364fc9dd8899e size: 3260
(ds_dash) yennanliu@yennanliude-MacBook-Pro:~/data_science_repo/mac_ds_docker$  

```






