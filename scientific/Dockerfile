FROM ubuntu:14.04

ADD vimrc.tar /tmp

RUN apt-get update && apt-get install -y python python-dev python-pip git tree htop wget curl software-properties-common wget curl
RUN cp /tmp/.vimrc ~/.vimrc && apt-get install -y vim && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && vi +PluginInstall +qall

RUN apt-get install -y gfortran
RUN cd /tmp && git clone https://github.com/xianyi/OpenBLAS
RUN cd /tmp/OpenBLAS && make FC=gfortran && make PREFIX=/opt/openblas install
RUN cd /tmp && git clone https://github.com/numpy/numpy && cd numpy && git checkout tags/v1.9.2

ADD numpy_conf.tar /tmp 
RUN pip install cython
RUN echo /opt/openblas/lib > /etc/ld.so.conf.d/openblas.conf && ldconfig
RUN cp /tmp/site.cfg /tmp/numpy/site.cfg && cd /tmp/numpy && python setup.py build && python setup.py install
RUN pip install scipy theano pandas scikit-learn
RUN apt-get install -y libfreetype6-dev libxft-dev && pip install matplotlib
RUN apt-get install -y libzmq-dev && pip install tornado jinja2 pyzmq jsonschema terminado ipython==3.2.1
