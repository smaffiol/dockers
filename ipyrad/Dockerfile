# docker build --rm -t ipyrad .

FROM continuumio/anaconda
MAINTAINER Sergio Maffioletti - S3IT: service and Support for Science IT - University of Zurich, Switzerland.
LABEL description="Run ipyrad"

RUN apt-get update -y
RUN conda update conda
RUN conda install -c ipyrad ipyrad
RUN pip install jupyter
RUN apt-get clean
ENTRYPOINT ["ipyrad"]
CMD ["-h"]
