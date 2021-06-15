FROM continuumio/miniconda3
#RUN pip install --no-cache-dir notebook
#FROM continuumio/miniconda3
LABEL maintainer="Arash Azamifard <arash.azamifard@nersc.no>"
LABEL purpose="Python libs for use case 1"
ENV PYTHONUNBUFFERED=1 \
    PYTHONPATH=/opt
RUN apt-get update \
&&  apt-get install -y --no-install-recommends \
&&  apt clean \
&&  rm -rf /var/lib/apt/lists/* \
&&  conda install setuptools \
&&  conda update conda \
&&  conda config --add channels conda-forge  \
&&  conda install -y \
    jupyter \
    satpy=0.29.0 \
    cartopy=0.18.0 \
    ipython=7.17.0 \
    matplotlib=3.3.1 \
    netcdf4=1.5.4 \
    numpy=1.19.1 \
    pillow=7.2.0 \
    python-dateutil=2.8.1 \
    scipy=1.5.2 \
    urllib3=1.25.10 \
    sentinelsat=0.14.0 \
    pandas=1.1.4 \
    GeoPandas=0.9.0 \
    Shapely=1.7.1 \
    wget=1.20.1 \
&&  conda clean -a -y \
&&  rm /opt/conda/pkgs/* -rf \
&&  mkdir /opt/notebooks
WORKDIR /opt/notebooks
ENTRYPOINT ["sh", "-c", "/opt/conda/bin/jupyter notebook --NotebookApp.token='' --allow-root --no-browser --ip=0.0.0.0 --notebook-dir=/opt/notebooks"]
