#!/bin/bash

echo "[`date`]: Start"

# Activate cellprofiler environment
. /opt/conda/etc/profile.d/conda.sh
conda activate base
conda activate cellprofiler-3.1.8

cellprofiler $@
RET=$?

echo "[`date`]: Done with code $RET"
exit $RET

