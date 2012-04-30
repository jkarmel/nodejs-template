chai = require 'chai'
sinon = require 'sinon'
sinonChai = require 'sinon-chai'
coffeekup = require 'coffeekup'
cheerio = require 'cheerio'
fs = require 'fs'

chai.use sinonChai
should = chai.should()

describe "index.html.coffee", ->
  html = ""
  $ = ""

  before (done) ->
    fs.readFile 'views/index.html.coffee', 'utf8', (error, data) ->
      throw error if error
      $ = cheerio.load(html = coffeekup.render data)
      done()

  it "has doctype html5", ->
    html.should.match(/^<!DOCTYPE html>/)

  it "has a head tag", ->
    $('head').length.should.equal(1)

  it "renders an h1", ->
    $('h1').text().should.equal('Homepage')
