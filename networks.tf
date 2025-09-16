# Red principal de la aplicación
resource "docker_network" "appnet" {
  name = "appnet"
}
# Red para servicios con datos persistentes (DB, storage)
resource "docker_network" "persistencenet" {
    name = "persistencenet"
}
# Red para monitoreo 
resource "docker_network" "monitornet" {
    name = "monitornet"
}
# Red para Grafana
resource "docker_network" "grafananet" {
  name = "grafananet"
}