workflow "build pdf" {
  on = "push"
  resolves = ["build"]
}

action "build" {
  uses = "./docs"
  runs = "Rscript -e 'rmarkdown::render("index.Rmd")'"
}
