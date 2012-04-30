express = require 'express'

app = module.exports = express.createServer()

app.configure ->
  # View Configuration
  app.set 'views', __dirname + '/views'
  app.set 'view engine', 'coffee'
  app.set 'view options',
    layout: false

  app.register '.coffee', require('coffeekup').adapters.express

  app.use express.bodyParser()
  app.use express.methodOverride()

  # Compile Less
  app.use express.compiler
    src: __dirname + '/public'
    enable: [ 'less' ]

  # Compile public Coffeescript
  app.use express.compiler
    src: __dirname + '/public'
    enable: [ 'coffeescript' ]

  app.use express.cookieParser()

  # Set this to a secret value to encrypt session cookies
  app.use express.session secret: process.env.SESSION_SECRET || 'secret123'

  # app.helpers require './helpers/layout'

  app.use app.router

  # Serve public files statically
  app.use express.static(__dirname + '/public')

app.configure 'development', ->
  app.use express.errorHandler
    dumpExceptions: true
    showStack: true

app.configure 'production', ->
  app.use express.errorHandler()

routes = require './routes'

app.get '/', routes.index

port = process.env.PORT || 3000
app.listen port
console.log 'Express server listening on port %d in %s mode', app.address().port, app.settings.env