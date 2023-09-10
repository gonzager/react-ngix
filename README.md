# DEPLOY REACT DENTRO DE UN NGINX

Es es un ejemplo muy simple de como se puede desplegar una aplicacion react con routes dentro de un servidor ngix

## Crear la imagen de docker
Para crear la imagen de docer que complia la aplicacion de react y la embebe dentro de un servidor nginx hay que correr el siguiente commando. Revisar el archivo Dockerfile 
```
docker build -t react-nginx .
```

En este ejemplo a la imagen generado le pusimos el nombre react-nginx.



## Lanzar la aplicacion dockeriazada

```
docker run -dp 8080:80 react-nginx
```
