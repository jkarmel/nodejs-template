mongo = mongod --dbpath data/db --fork --logpath log/mongo.log > mongo.pid

setup:
	mkdir data
	mkdir data/db
	mkdir log
	echo 'MONGOHQ_URL=mongodb://localhost/feelwelllabs/dev' > .env

run:
	$(mongo)
	foreman run coffee app.coffee

watch:
	$(mongo)
	foreman run supervisor app.coffee

test:
	$(mongo)
	MONGOHQ_URL=mongodb://localhost/feelwelllabs/test ./node_modules/.bin/mocha test/routes/* test/helpers/* test/models/*

.PHONY: setup run watch test