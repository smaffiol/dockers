# docker build --rm -t ipyrad .

FROM continuumio/anaconda
MAINTAINER Sergio Maffioletti - S3IT: service and Support for Science IT - University of Zurich, Switzerland.
LABEL description="Run ipyrad"

ARG ipyrad_version
RUN apt-get update -y
RUN conda update conda
RUN if [ -z "$ipyrad_version" ]; then conda install -c ipyrad ipyrad; else conda install -c ipyrad ipyrad=$ipyrad_version; fi
RUN pip install jupyter
RUN apt-get clean
ENTRYPOINT ["ipyrad"]
CMD ["-h"]
