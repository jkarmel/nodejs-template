routes = require '../../routes'

chai = require 'chai'
sinon = require 'sinon'
sinonChai = require 'sinon-chai'

chai.use sinonChai
should = chai.should()

describe "routes", ->
  describe "index", ->
    it "should render 'index.html.coffee'", ->
      request = {}
      response = { 'render' : sinon.stub() }

      routes.index(request, response)

      response.render.should.have.been.calledWith("index.html.coffee")
