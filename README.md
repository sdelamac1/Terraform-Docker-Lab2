LABORATORIO SEMANA 2 Terraform + Docker

INTEGRANTES:
-De Lama Cespedes, Sergio Felix

DESCRIPCION:
Repositorio de Infraestructura con Terraform y Docker

Imagenes Docker Utilizadas:
-Nginx---> nginx:stable-perl
-Postgres--> postgres:13-trixie
-Grafana--> grafana/grafana:main-ubuntu
-Redis --> redis:latest

⚙️ Instruciones de Uso:
1.Clonar el repositorio
```
``bash
   git clone https://github.com/sdelamac1/Terraform-Docker-Lab2.git
   cd Terraform-Docker-Lab2
```
2.Inicializar Terraform
```
terraform init
```
3.Verificar el plan de ejecución
```
terraform plan
```
4.Aplicar la infraestructura
```
terraform apply
```
5.Acceder a los servicios
```
Nginx

http://localhost:8001
http://localhost:8002
http://localhost:8003

Grafana
http://localhost:3001
Usuario: admin
Contraseña: admin

Postgres
Puerto: 5432
Usuario: postgres
Contraseña: 1234

Redis
Puerto: 6379
```

📷 Vista previa Nginx
Al acceder a cualquiera de los puertos configurados (ej. http://localhost:8001) debería mostrarse la página por defecto de Nginx:
```
Welcome to nginx!

If you see this page, the nginx web server is successfully installed and working. Further configuration is required.

For online documentation and support please refer to nginx.org.
Commercial support is available at nginx.com.

Thank you for using nginx.
```