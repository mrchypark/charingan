FROM rocker/r-rmd

COPY install.R /install.R

RUN Rscript /install.R

COPY src /src
WORKDIR /src

RUN mkdir output

RUN Rscript -e 'rmarkdown::render("index.Rmd", output_dir = "output")'
