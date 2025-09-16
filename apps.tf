 # primer contenedor de la app (8001)
resource "docker_container" "app1" {
  name = "app1"
  image = "nginx:stable-perl"

 ports {
    internal = 80
    external = 8001
    }
  # se conecta a la red de la app
 networks_advanced {
    name = docker_network.appnet.name
    }
  # también a la red de data
 networks_advanced {
    name= docker_network.persistencenet.name
    }
 }
 
 # segundo contenedor de la app (8002)
 resource "docker_container" "app2" {
   name = "app2"
   image = "nginx:stable-perl"
 
    ports {
        internal=80
        external=8002
    }

   # igual que el otro, va a red de app
 networks_advanced{
    name =docker_network.appnet.name
    }
    # y también a la red de data
 networks_advanced{
    name = docker_network.persistencenet.name
    }
 }
 # tercer contenedor de la app (8003)
  resource "docker_container" "app3" {
   name = "app3"
   image = "nginx:stable-perl"
 
    ports {
        internal=80
        external=8003
    }
 # conectado a la red de app
 networks_advanced{
    name = docker_network.appnet.name
    }
   # conectado a la red de data
 networks_advanced{
    name = docker_network.persistencenet.name
    }
 }