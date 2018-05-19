FROM ubuntu:16.04
MAINTAINER Sergio Maffioletti - S3IT: service and Support for Science IT - University of Zurich, Switzerland.
ARG ilastik_version
RUN apt-get update \
&& apt-get install -y wget bzip2 \
&& mkdir /apps \
&& wget http://files.ilastik.org/ilastik-${ilastik_version}-Linux.tar.bz2 \
&& tar xjf ilastik-${ilastik_version}-Linux.tar.bz2 -C /apps/ \
&& rm -rf ./ilastik-${ilastik_version}-Linux.tar.bz2
ENV PATH=$PATH:/apps/ilastik-${ilastik_version}-Linux/bin/
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/apps/ilastik-${ilastik_version}-Linux/lib
ENTRYPOINT [/apps/ilastik-${ilastik_version}-Linux/, run_ilastik.sh] 
