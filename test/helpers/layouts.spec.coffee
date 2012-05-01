chai = require 'chai'
sinon = require 'sinon'
sinonChai = require 'sinon-chai'
coffeekup = require 'coffeekup'
cheerio = require 'cheerio'
fs = require 'fs'

chai.use sinonChai
should = chai.should()

layouts = require '../../helpers/layouts'

describe "layout", ->
  html = ""
  $ = ""

  before ->
    html = coffeekup.render ( -> application(js : "main")), layouts
    $ = cheerio.load(html)

  it "has doctype html5", ->
    html.should.match(/^<!DOCTYPE html>/)

  it "has a head tag", ->
    $('head').length.should.equal(1)

  it "links to basic javascript libraries", ->
    $('head script[src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"]').length.should.equal(1)
    $('head script[src="/nowjs/now.js"]').length.should.equal(1)

  it "uses require.js to load modules (if specified)", ->
    $('head script[src="/javascripts/require.js"][data-main="javascripts/main"]').length.should.equal(1)


