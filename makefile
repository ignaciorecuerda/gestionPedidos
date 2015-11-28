#makefile para automatizar todo

test:
	mocha test/test.js

install:
	sudo npm install
	sudo npm install async --save
	sudo npm install documentdb --save