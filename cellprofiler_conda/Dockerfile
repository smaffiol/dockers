FROM continuumio/miniconda 
# FROM continuumio/anaconda
# Install CellProfiler dependencies 

ARG conda_environment
ARG cp_run_script
RUN apt -y install default-libmysqlclient-dev gcc g++  && \
useradd -ms /bin/bash bblab
ADD $conda_environment /tmp/cp.yaml
ADD $cp_run_script /home/bblab/run_cellprofiler.sh
RUN chown bblab /home/bblab/run_cellprofiler.sh
USER bblab
RUN echo ". /opt/conda/etc/profile.d/conda.sh" >> /home/bblab/.bashrc && \
echo "conda activate base" >> /home/bblab/.bashrc && \
chmod +x /home/bblab/run_cellprofiler.sh
ENV JAVA_HOME=/home/bblab/.conda/envs/cellprofiler-3.1.8
RUN conda env create -f /tmp/cp.yaml
ENTRYPOINT ["/home/bblab/run_cellprofiler.sh"] 
