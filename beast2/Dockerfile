# docker build --rm -t ipyrad .

FROM ubuntu:16.04
MAINTAINER Sergio Maffioletti - S3IT: service and Support for Science IT - University of Zurich, Switzerland.
LABEL description="Run BEAST2"

ARG beast_version
RUN apt-get update -y
RUN apt-get install -y unzip wget openjdk-8-jre
RUN wget https://github.com/CompEvol/beast2/releases/download/v$beast_version/BEAST.v$beast_version.Linux.tgz
RUN wget https://github.com/CompEvol/beast2/releases/download/v$beast_version/BEAST.addon.v$beast_version.zip
RUN mkdir -p /apps/
RUN tar xfz BEAST.v$beast_version.Linux.tgz -C /apps/
RUN unzip -o BEAST.addon.v$beast_version.zip -d /apps/beast
ENV PATH="${PATH}:/apps/beast/bin"
ENV CLASSPATH="/apps/beast/lib"
ENTRYPOINT ["beast"]
CMD ["-v"]
