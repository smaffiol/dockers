# docker build --rm -t beast .

FROM ubuntu:16.04
MAINTAINER Sergio Maffioletti - S3IT: service and Support for Science IT - University of Zurich, Switzerland.
RUN apt-get update \
&& apt-get install -y wget python git python-dev gcc g++ libffi-dev libssl-dev \
&& useradd -m gc3pie
USER gc3pie:gc3pie
WORKDIR /home/gc3pie
RUN wget https://raw.githubusercontent.com/uzh/gc3pie/master/install.py \ 
&& python ./install.py --development --no-gc3apps --yes -a openstack \
&& echo ". /home/gc3pie/gc3pie/bin/activate" > ~/.bashrc
USER root:root
RUN apt autoremove \
&& apt-get purge -y -f wget g++ make \
&& apt-get autoremove -y \
&& apt-get clean -y \
&& apt-get autoclean -y \
&& rm -rf /var/lib/apt/lists/*
USER gc3pie:gc3pie
WORKDIR /home/gc3pie
