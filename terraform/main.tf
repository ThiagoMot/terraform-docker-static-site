terraform {
  required_version = ">= 1.0.0"
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# 1. Baixa a imagem oficial do Nginx
resource "docker_image" "nginx" {
  name         = "nginx:alpine"
  keep_locally = false
}

# 2. Cria o container Nginx montando a pasta ../src
resource "docker_container" "site_ultimate" {
  image = docker_image.nginx.image_id
  name  = "marvel-ultimate-site"

  ports {
    internal = 80
    external = 8080
  }

  volumes {
    host_path      = abspath("${path.module}/../src")
    container_path = "/usr/share/nginx/html"
    read_only      = true
  }
}

output "url_local" {
  description = "Acesse o site localmente por este endereço:"
  value       = "http://localhost:8080"
}