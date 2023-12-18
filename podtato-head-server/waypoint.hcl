project = "podtato-head-server"

app "podtato-head-server" {
  labels = {
    "service" = "podtato-head-server",
    "env"     = "dev"
  }

  build {
    use "docker" {
      buildkit    = false
      disable_entrypoint = true
      dockerfile = "./docker/DockerfileV0.1.2"
    }
    registry {
      use "docker" {
        image = "1it/podtato-head-server"
        tag   = "latest"
        local = true
      }
    }
  }

  deploy {
    use "docker" {}
  }
}