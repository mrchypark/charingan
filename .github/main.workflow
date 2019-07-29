workflow "build pdf" {
  on = "push"
  resolves = ["docker://"]
}

action "docker://" {
  uses = "docker://"
}
