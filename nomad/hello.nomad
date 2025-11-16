job "DevOps" {
  datacenters = ["dc1"]
  type = "service"

  group "DevOps-group" {
    count = 1

    task "DevOps-docker" {
      driver = "docker"

      config {
        image = "hello-python"
      }
      resources {
        cpu    = 100  
        memory = 64 
      }
    }
  }
}
