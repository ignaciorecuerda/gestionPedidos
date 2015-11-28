#makefile para automatizar todo

test:
	mocha test/test.js

install:
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