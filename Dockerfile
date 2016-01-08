FROM jupyter/notebook
RUN apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
        libopenblas-dev
RUN pip3 --no-cache-dir install numpy scipy sympy pandas matplotlib
RUN pip3 --no-cache-dir install scikit-learn scikit-image
