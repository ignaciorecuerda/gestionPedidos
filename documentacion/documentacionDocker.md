#Docker

Para crear la imagen lo primero que tengo que hacer es crear el fichero [Dockerfile](https://github.com/ignaciorecuerda/gestionPedidos/blob/master/Dockerfile)

Luego nos vamos a la web [Docker Hub](https://hub.docker.com)y nos registramos.
Pinchamos sobre "Create Automated Build" como se puede ver en la imagen.

![Create Automated Build](https://www.dropbox.com/s/9dyf2ksjpz6mrkr/hito4.1.png?dl=1)

Damos permisos para poder conectarse a nuestro repositorio de GitHub y así seleccionar el repositorio para el cual queramos crear la imagen.

Ahora docker se encarga de hacer una nueva build a partir del archivo [DockerFile](https://github.com/ignaciorecuerda/gestionPedidos/blob/master/Dockerfile)

![Docker hub success](https://www.dropbox.com/s/d763qfkujfjzk4m/hito4.2.png?dl=1)

Docker Hub, ahora de manera automática, hará un nuevo build cada vez que realicemos algún cambio sobre nuestro código y ejecutemos un `git push`