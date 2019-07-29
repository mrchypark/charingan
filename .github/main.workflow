workflow "build pdf" {
  on = "push"
  resolves = ["build"]
}

action "build" {
  uses = "./docs"
  env = {
    
  }
}
