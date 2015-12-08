FROM ubuntu:latest

#Autor
MAINTAINER Jose Ignacio Recuerda Cambil <ignacio.recuerda@gmail.com>

#Actualizar
RUN sudo apt-get update

#Descargar aplicación e instalacíon software necesario
RUN sudo apt-get install -y git
RUN sudo apt-get install -y build-essential
RUN sudo  git clone https://github.com/ignaciorecuerda/gestionPedidos.git
RUN cd gestionPedidos && sudo apt-get install -y nodejs
RUN cd gestionPedidos && sudo apt-get install -y npm
RUN cd gestionPedidos && git pull
RUN cd gestionPedidos && make install