# docker build --rm -t beast .

FROM ubuntu:16.04
MAINTAINER Sergio Maffioletti - S3IT: service and Support for Science IT - University of Zurich, Switzerland.
RUN apt-get update \ 
&& apt-get install --no-install-recommends -y wget tar g++ make zlib1g-dev zlib1g python3
RUN wget http://catchenlab.life.illinois.edu/stacks/source/stacks-2.0Beta9.tar.gz \
&& tar xfvz stacks-2.0Beta9.tar.gz \
&& cd stacks-2.0Beta9 \
&& ./configure \
&& make \
&& make install \
&& cd \
&& rm -rf stacks-2.0Beta9 \
&& rm /stacks-2.0Beta9.tar.gz
RUN apt autoremove \
&& apt-get purge -y -f wget g++ make \
&& apt-get autoremove -y \
&& apt-get clean -y \
&& apt-get autoclean -y \
&& rm -rf /var/lib/apt/lists/*
