FROM continuumio/miniconda 
# FROM continuumio/anaconda
# Install CellProfiler dependencies 

RUN apt-get update && \
apt -y install default-libmysqlclient-dev gcc g++ && \
useradd -ms /bin/bash bblab && \ 
chown -R bblab /home/bblab/ 
USER bblab
ADD scripts/* /tmp/
ENV JAVA_HOME=/home/bblab/.conda/envs/cellprofiler-3.1.8
ENV PATH="${PATH}:$JAVA_HOME/bin"
RUN echo ". /opt/conda/etc/profile.d/conda.sh" >> /home/bblab/.bashrc && \
echo "conda activate base" >> /home/bblab/.bashrc && \
echo "conda activate cellprofiler-3.1.8" >> /home/bblab/.bashrc && \
conda env create -f /tmp/cp.yaml && \
#conda env create -f /tmp/cp318a.yaml && \
#conda env update -f /tmp/cp318b.yaml && \
conda clean --yes --all  
#cp /tmp/run_cellprofiler.sh /home/bblab/run_cellprofiler.sh && \
#chmod +x /home/bblab/run_cellprofiler.sh
WORKDIR /home/bblab/
ENTRYPOINT ["cellprofiler"] 
