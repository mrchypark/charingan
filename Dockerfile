FROM rocker/r-rmd

RUN apt-get update \
  && apt-get install -y \
  libssl-dev \
  libcurl4-openssl-dev \
  libxml2-dev \
  libssh2-1-dev \
  libgit2-dev \
  curl \
  && rm -rf /var/lib/apt/lists/*

COPY install.R /install.R

RUN Rscript /install.R

WORKDIR /docs

RUN Rscript -e 'rmarkdown::render("index.Rmd")'
