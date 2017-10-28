# NodeJS Template

This is a template node project.

## Technology Stack

### Data Storage

[MongoDB](http://www.mongodb.org/) - NoSQL database with a javascript interface

### Platform

[node](http://www.nodejs.org) - Javascript platform to build network applications  
[express](http://www.expressjs.com) - Minimalist web framework a la Ruby's sinatra

### ORM

[mongoosejs](http://mongoosejs.com/) - Asynchronous object modelling tool for MongoDB 

### Front-End

[less](http://http://lesscss.org/) - Superset of CSS that compiles to CSS  
[coffeekup](http://http://coffeekup.org/) - HTML builder thact utilizes coffeescript  
[space-pen](https://github.com/BamPowLabs/space-pen) - Clientside HTML builder that builds on top of JQuery

### Misc

[now](http://nowjs.com/) - Realtime RPC

### Testing

[mocha](http://mochajs.org/) - BDD/TDD testing framework similar to Jasmine but modular  
[chai](http://chaijs.com/) - BDD/TDD assertion library  
[sinon](http://sinonjs.org/) - Spy/stubbing/mocking framework

## Installation

To get up and running with the project you will need to do the following:

 * Install [node](http://nodejs.org/#download) and [npm](http://npmjs.org/).
 * Install supervisor via `npm install -g supervisor` (make sure npm's bin folder is in your PATH).
 * Install foreman via `[sudo] gem install foreman`.
 * Install [mongodb](http://www.mongodb.org/display/DOCS/Quickstart+OS+X).
 * Checkout the source code and run `npm install`.
 * `make setup`

***TODO***: Write a script to do installations

## Running

To run the app simply use `make run` or `make watch` (if you want the server to update when changes happen)

## Tests

The tests are written in [mocha](http://mochajs.org/) and follow BDD convention. Use `make test` to run them.  
**NOTE:** If you add a new directory under tests, you will have to add them to the Makefile (***TODO:*** Write a script to programmatically do this)
