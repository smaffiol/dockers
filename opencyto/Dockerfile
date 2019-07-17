# DO NOT EDIT FILES CALLED 'Dockerfile'; they are automatically # generated. Edit 'Dockerfile.in' and generate the 'Dockerfile' # with the 'rake' command. # The suggested name for this image is: bioconductor/release_core. 
FROM bioconductor/release_core2
MAINTAINER sergio.maffioletti@uzh.ch
ADD install.R /tmp/
# invalidates cache every 24 hours 
ADD http://master.bioconductor.org/todays-date /tmp/
RUN R -f /tmp/install.R
