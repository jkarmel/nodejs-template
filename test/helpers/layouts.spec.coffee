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
    html = coffeekup.render layouts.hardcode.application
    $ = cheerio.load(html)

  it "has doctype html5", ->
    html.should.match(/^<!DOCTYPE html>/)

  it "has a head tag", ->
    $('head').length.should.equal(1)

  it "links to nowjs", ->
    $('head script[src="/nowjs/now.js"]').length.should.equal(1)

  it "links to require.js", ->
    $('head script[src="/require.js"]').length.should.equal(1)