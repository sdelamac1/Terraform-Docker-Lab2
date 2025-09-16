resource "docker_container" "app1" {
  name = "app1"
  image = "nginx:stable-perl"

 ports {
    internal = 80
    external = 8001
    }

 networks_advanced {
    name = docker_network.appnet.name
    }
 networks_advanced {
    name= docker_network.persistencenet.name
    }
 }

 resource "docker_container" "app2" {
   name = "app2"
   image = "nginx:stable-perl"
 
    ports {
        internal=80
        external=8002
    }
 
 networks_advanced{
    name =docker_network.appnet.name
    }
 networks_advanced{
    name = docker_network.persistencenet.name
    }
 }

  resource "docker_container" "app3" {
   name = "app3"
   image = "nginx:stable-perl"
 
    ports {
        internal=80
        external=8003
    }
 
 networks_advanced{
    name = docker_network.appnet.name
    }
 networks_advanced{
    name = docker_network.persistencenet.name
    }
 }