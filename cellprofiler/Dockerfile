FROM ubuntu:16.04
# FROM continuumio/anaconda
# Install CellProfiler dependencies 
RUN apt-get -y update && \
apt-get -y install --no-install-recommends \
wget \
python-pytest \ 
build-essential \
python-mysqldb \
python-sqlite \
cython \ 
git \ 
libmysqlclient-dev \ 
libhdf5-dev \ 
libxml2-dev \ 
libxslt1-dev \ 
openjdk-8-jdk \ 
python-dev \ 
python-pip \ 
python-h5py \ 
python-wxgtk3.0 \ 
python-zmq \
python-chardet && \
apt-get -y remove python-zmq && \
rm -rf /var/lib/apt/lists/*
WORKDIR /usr/local/src
# Update python-chardet package
RUN git clone https://github.com/CellProfiler/CellProfiler.git 
WORKDIR /usr/local/src/CellProfiler 
ARG version=3.0.0 
RUN git checkout tags/$version
RUN pip install --upgrade pipa && \ 
pip install setuptools && \
pip install --editable . && \
pip uninstall -y prokaryote && \
pip install prokaryote
ENTRYPOINT ["/usr/local/bin/cellprofiler"] 
CMD ["--run", "--run-headless", "--help"]
