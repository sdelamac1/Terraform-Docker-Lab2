# redis pa guardar datos en memoria (puerto 6379)
resource "docker_container" "redis_dev" {
  name = "redis"
  image = "redis:latest"

ports {
  internal = 6379
  external = 6379
    }

networks_advanced {
  name = docker_network.persistencenet.name
    }
}

# postgres para la base de datos (puerto 5432)
resource "docker_container" "postgres" {
    name = "postgres"
    image = "postgres:13-trixie"

    env = ["POSTGRES_PASSWORD=1234"]

ports {
  internal = 5432
  external = 5432
    }

networks_advanced {
  name = docker_network.persistencenet.name
    }
}
