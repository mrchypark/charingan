FROM mrchypark/charingan

COPY src /src
WORKDIR /src

RUN mkdir output

RUN Rscript -e 'rmarkdown::render("index.Rmd", output_dir = "output")'
