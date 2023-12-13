project = "podtato-head-server"

app "podtato-head-server" {
  labels = {
    "service" = "podtato-head-server",
    "env"     = "dev"
  }

  build {
    use "docker" {
      buildkit    = false
      disable_entrypoint = false
      dockerfile = "./docker/DockerfileV0.1.2"
    }
  }

  deploy {
    use "docker" {}
  }
}