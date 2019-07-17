FROM cellprofiler/cellprofiler:latest
MAINTAINER Sergio Maffioletti - S3IT: service and Support for Science IT - University of Zurich, Switzerland.
LABEL description="BBlab image with CellProfiler 3 and Ilastik 1.3.0"
RUN apt-get update \
&& apt-get install wget \
&& useradd -m gc3pie
USER gc3pie:gc3pie
WORKDIR /home/gc3pie
RUN wget http://files.ilastik.org/ilastik-1.3.0-Linux.tar.bz2 \
&& tar xjf ilastik-1.*-Linux.tar.bz2 \
&& rm -rf ilastik-1.*-Linux.tar.bz2
ENTRYPOINT ["/init", "cellprofiler"] 
CMD ["--run", "--run-headless", "--help"]

