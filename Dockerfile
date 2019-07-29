FROM rocker/r-rmd

COPY install.R /install.R

RUN Rscript /install.R
