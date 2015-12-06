#makefile para automatizar todo

test:
	mocha test/test.js

install:
	sudo apt-get update
	sudo apt-get install -y curl
	curl -sL https://deb.nodesource.com/setup | sudo bash -
	sudo apt-get install -y nodejs
	sudo apt-get install -y npm
	sudo npm install
	sudo npm install async --save
	sudo npm install documentdb --save

installDocker:
	sudo apt-get update
	sudo apt-get install curl
	curl -sL https://deb.nodesource.com/setup | sudo bash -
	sudo apt-get install nodejs
	sudo apt-get install npm
	sudo npm install
	sudo npm install async --save
	sudo npm install documentdb --save

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
	sudo apt-get install -y docker.io