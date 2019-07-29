FROM rocker/r-rmd

RUN apt-get update \
  && apt-get install -y \
  libssl-dev \
  libcurl4-openssl-dev \
  libxml2-dev \
  && rm -rf /var/lib/apt/lists/*

COPY install.R /install.R

RUN Rscript /install.R
