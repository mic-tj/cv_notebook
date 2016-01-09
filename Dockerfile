FROM jupyter/notebook
RUN apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
        libatlas-base-dev \
        libfreetype6-dev \
        libpng12-dev
RUN pip3 --no-cache-dir install numpy scipy sympy pandas matplotlib
RUN pip3 --no-cache-dir install scikit-learn scikit-image

VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 8888

ENTRYPOINT ["tini", "--"]
CMD ["jupyter", "notebook"]
