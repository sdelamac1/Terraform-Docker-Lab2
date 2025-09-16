resource "docker_network" "appnet" {
  name = "appnet"
}

resource "docker_network" "persistencenet" {
    name = "persistencenet"
}

resource "docker_network" "monitornet" {
    name = "monitornet"
}

resource "docker_network" "grafananet" {
  name = "grafananet"
}