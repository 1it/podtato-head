project = "podtato-head-server"

app "podtato-head-server" {
  labels = {
    "service" = "podtato-head-server",
    "env"     = "dev"
  }

  build {
    use "docker" {
      dockerfile = "./docker/DockerfileV0.1.2"
    }
  }

  deploy {
    use "docker" {}
  }
}
