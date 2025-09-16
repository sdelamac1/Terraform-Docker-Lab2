# contenedor grafana
resource "docker_container" "grafana" {
  name = "grafana"
  image = "grafana/grafana:main-ubuntu"
 # abre el puerto 3000 pero pa usarlo afuera es 3001
ports {
  internal = 3000
  external = 3001
    }
 # se conecta a la red de grafana
networks_advanced {
    name = docker_network.grafananet.name
    }
# tambien a la red de la app para hablar con otros
networks_advanced {
  name = docker_network.appnet.name
    }
}