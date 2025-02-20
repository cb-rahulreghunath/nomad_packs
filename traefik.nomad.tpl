job "traefik" {
  datacenters = ["${datacenter}"]

  group "traefik" {
    task "traefik" {
      driver = "docker"

      config {
        image = "${image}"
        ports = ["http"]
      }

      resources {
        cpu    = 500
        memory = 256
      }
    }
  }
}

