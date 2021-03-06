FROM jupyter/notebook
RUN apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
        gfortran \
        libopenblas-dev \
        liblapack-dev \
        libatlas-base-dev \
        libfreetype6-dev \
        libpng12-dev
RUN pip3 --no-cache-dir install numpy scipy sympy pandas matplotlib
RUN apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
    libjpeg-dev
RUN pip3 --no-cache-dir install scikit-learn scikit-image
RUN pip3 --no-cache-dir install redis

