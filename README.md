# Proyecto OpenOrder IV
##Gestión de pedidos

Para crear mi aplicacion me he basado en este [tutorial](https://azure.microsoft.com/es-es/documentation/articles/documentdb-nodejs-application/#_Toc395783176) en el que creo una aplicación con node y la enlazo con una base de datos que se encuentra en azure. Los comandos que he usado para crearla han sido:

* sudo npm install -g express
* sudo npm install -g express-generator
* express gestionPedidos
* cd gestionPedidos/
* npm install
* npm install async --save
* npm install documentdb --save


#Primer hito
##Integrantes del proyecto
Este repositorio es de **Jose Ignacio Recuerda Cambil**, aunque el grupo esta formado también por:
- Antonio Miguel Pozo Cámara
- Ignacio Romero Cabrerizo

##Breve descripción del proyecto OpenOrder
Este proyecto llevará la gestión de pedidos de una pequeña o mediana empresa. La API del servidor se encargará de permitir al usuario hacer pedidos y que todos ellos queden registrados en una Base de datos. 

##Descripción de este repositorio
Este repositorio se encargará de la gestión de los pedidos que los usuarios harán a la empresa. Almacenará en una base de datos todos los datos necesarios para que el pedido quede registrado correctamente.

##Servicios necesarios
En principio será necesario un servicio de base de datos de SQL para poder almacenar y gestionar los pedidos que se realicen.

##Este proyecto se ha inscrito en el certamen de proyectos libres de la UGR.

#Segundo hito
##Sistema de test
Como sistema de test he usado moncha, ya que lo conocia de haberlo usado para uno de los ejercicios del tema.
Empiezo instalando moncha con el comando "sudo npm install -g mocha" .Creo un directorio con el nombre "test" y dentro de este el archivo que se encargará de comprobar que la aplicación carga correctamente.
El contenido de test.js es el siguiente:

![test.js](https://www.dropbox.com/s/zyxh53hsaij1pmi/hito2.4.png?dl=1)

Finalmente lo ejecuto con el comando "mocha test/test.js"

Por ahora solo he realizado una comprobación para que no se puede introducir un nombre con menos de 3 caracteres para ser añadido. En un futuro se añadiran más test a la aplicación. Aquí se puede ver el código:

![.travis.yml](https://www.dropbox.com/s/8qtl4jypm9t3vq7/hito2.3.png?dl=1)


##Integración continua
![pasa travis](https://travis-ci.org/ignaciorecuerda/gestionPedidos.svg?branch=master)

Para la integración continua de mi proyecto he usado [Travis](https://travis-ci.org).

Para empezar tenemos que registrarnos en la página desde el mismo git. Le damos permisos para que pueda acceder a nuestros proyectos de git y así lanzar la aplicación.
Una vez hecho esto creo el fichero llamado ".travis.yml" y lo añado a la carpeta raiz del repositorio.

El fichero contiene lo siguiente:

![.travis.yml](https://www.dropbox.com/s/556agqlr8n9figk/hito2.1.png?dl=1)

Seguidamente inicio el test al repositorio de la aplicación y lo realiza correctamente como podemos ver en la siguiente captura:

![build passing](https://www.dropbox.com/s/9uekyx2jzmazoki/hitoAnterior.png?dl=1)

![Pasa el test](https://www.dropbox.com/s/pr7jobwx3imj9p8/hitoAnterios2.png?dl=1)

Añado el fichero makefile para así automatizar los test. Dicho fichero contiene lo siguiente:

![fichero makefile](https://www.dropbox.com/s/b3lw6xda2r4jtk6/hito2.5.png?dl=1)



#Tercer hito

Para realizar este hito he escogido el PaaS Heroku. Lo he escogido porque es muy sencillo de usar, ya que se puede enlazar directamente con un repositorio de gitHub y gestionar con unos comandos de terminal de una manera muy fácil. Heroku tiene varios planes para alojar aplicaciones, yo he escogido el plan gratuito ya que con este tengo las funciones que necesito para la práctica. Tiene las limitaciones de que no puede estar operativo más de ciertas horas seguidas, y si no recibe peticiones pasado 30 min la aplicación se "duerme" con el inconveniente de que para la siguiente petición tendrá un tiempo de respuesta mayor al que tendría si estuviese operativo.

Los pasos que he seguido para tener la aplicación en Heroku son los siguientes:

* En primer lugar creo una aplicación en Heroku, esta aplicación la he llamado 
"gestionpedidos".

![Creando aplicacion en heroku](https://www.dropbox.com/s/fpm9tfrubpbq5ma/hito1.png?dl=1)

* Una vez creada me voy a la página web de Heroku y verifico que se ha creado correctamente mi aplicación. Podemos comprobarlo en la siguiente captura de pantalla

![verifico creacion app](https://www.dropbox.com/s/r1lrlm91vnhlqt0/hito3.png?dl=1)

* En segundo lugar lo que hago es hacer un push de mi repositorio a heroku, para ello he usado el comando "git push heroku master", como se puede ver a continuación.

![Creando aplicacion en heroku](https://www.dropbox.com/s/wtp8f1wnms8wu8z/hito2.png?dl=1)

* Por último, abro la aplicación con el comando "Heroku open" desde terminal 

![abro app desde terminal](https://www.dropbox.com/s/185sdui7iv9z3f1/hito4.png?dl=1)

* o abriendola desde nuestro navegador con este enlace [Gestión pedidos](https://gestionpedidos.herokuapp.com)

Aquí dejo una captura de la aplicación funcionando

![aplicación funcionando](https://www.dropbox.com/s/dsy9stezfcbtxhx/hito5.png?dl=1)

La aplicación hace uso de una base de datos que está ubicada en azure. Deja captura de dicha base de datos

![BD azure](https://www.dropbox.com/s/92rs54ho4zmrv4b/6.png?dl=1)
