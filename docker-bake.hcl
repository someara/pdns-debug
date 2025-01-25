group "default" {
  targets = ["pdns-debug"]
}

target "pdns-debug" {
  context = "."
  dockerfile = "./Dockerfile"
  platforms = ["linux/amd64", "linux/arm64"]
  tags = ["someara/pdns-debug:latest"]
}
