# docker build --rm -t beast .

FROM ubuntu:16.04
MAINTAINER Sergio Maffioletti - S3IT: service and Support for Science IT - University of Zurich, Switzerland.
LABEL description="Run BEAST2"

ARG beast_version
ARG babel_version
ARG beast_packages_folder_name
RUN apt-get update -y
RUN apt-get install -y autoconf build-essential unzip wget git openjdk-8-jdk libtool
# Install Beagle
RUN git clone --depth=1 https://github.com/beagle-dev/beagle-lib.git
WORKDIR /beagle-lib
RUN ./autogen.sh
RUN ./configure 
RUN make 
RUN make install
WORKDIR /
RUN rm -rf beagle-lib
# Install Beast2
RUN wget https://github.com/CompEvol/beast2/releases/download/v$beast_version/BEAST.v$beast_version.Linux.tgz
RUN mkdir -p /apps/
RUN tar xfz BEAST.v$beast_version.Linux.tgz -C /apps/
RUN rm BEAST.v$beast_version.Linux.tgz
ENV PATH="${PATH}:/apps/beast/bin"
ENV CLASSPATH="/apps/beast/lib"
# Install addon packages
RUN /apps/beast/bin/addonmanager -add BEASTLabs
# Install Babel package
RUN wget https://github.com/rbouckaert/Babel/releases/download/0.0.1/Babel.addon.v0.1.5.zip
RUN mkdir -p ~/.beast/$beast_packages_folder_name/Babel
RUN unzip Babel.addon.v0.1.5.zip -d ~/.beast/$beast_packages_folder_name/Babel
RUN rm Babel.addon.v0.1.5.zip
#ENTRYPOINT ["beast", "-working", "-overwrite", "-beagle", "-threads", "-1", "-instances", "-1"]
ENTRYPOINT ["beast"]
CMD ["-help"]
