# docker build --rm -t beast .

FROM r-base:3.5.2
MAINTAINER Sergio Maffioletti - S3IT: service and Support for Science IT - University of Zurich, Switzerland.

COPY gapit_scripts/* /tmp/gapit_scripts/

RUN Rscript -e "install.packages('BiocManager');library('BiocManager');BiocManager::install(c('foreach', 'doParallel', 'multtest', 'gplots', 'LDheatmap', 'genetics', 'ape', 'EMMREML', 'scatterplot3d', 'pryr', 'data.table', 'snow', 'tictoc'))" \
&& apt update \
&& apt autoremove \
&& apt-get autoremove -y \
&& apt-get clean -y \
&& apt-get autoclean -y \
&& rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["Rscript --vanilla /tmp/gapit_scripts/gwas.R /data /chromosomes /output"]
