#makefile para automatizar todo

test:
	mocha test/test.js

install:
	sudo apt-get update
	sudo apt-get install -y nodejs
	sudo apt-get install -y nodejs-legacy
	sudo apt-get install -y npm
	sudo npm cache clean
	sudo npm install
	sudo npm install async --save
	sudo npm install documentdb --save

installnvm:
	sudo apt-get update
	sudo apt-get install -y curl
	curl https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
	nvm use v4.2.1

heroku:
	heroku login
	heroku create gestionpedidos
	git add *
	git commit -m "subiendo aplicación para desplegar en Heroku"
	git push heroku master
	heroku ps:escale web=1
	heroku open

run:
	npm start

docker:
	sudo apt-get update
	sudo apt-get install -y docker.io
	sudo docker pull ignaciorecuerda2/gestionpedidos
	sudo docker run -t -i ignaciorecuerda2/gestionpedidos  /bin/bash