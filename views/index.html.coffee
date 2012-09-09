application
  head: ->
    link rel:"stylesheet", type:"text/css", href:"/stylesheets/style.css"
  body: ->
    h1 "Jeremy Karmel"
    div class:"separator"
    ul class:"profiles", ->
      li ->
        a href:"http://twitter.com/jkarmel", "Twitter"
      li ->
        a href:"www.linkedin.com/in/jkarmel","LinkedIn"
      li -> 
        a href:"mailto:jkarmel@me.com","Email"
