doctype 5
html ->
  head ->
    meta name:"viewport", content:"width = 320, initial-scale = 2.3, user-scalable = no"
    link rel:"stylesheet", type:"text/css", href:"/stylesheets/style.css"
  body ->
    h1 "Jeremy Karmel"
    div class:"separator"
    ul class:"profiles", ->
      li ->
        a href:"http://twitter.com/jkarmel", "Twitter"
      li ->
        a href:"http://linkedin.com/in/jkarmel","LinkedIn"
      li -> 
        a href:"mailto:jkarmel@me.com","Email"
