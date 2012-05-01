exports.hardcode = {}

exports.hardcode.application = (content) ->
  doctype 5
  html ->
    head ->
      script src: "https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"
      script src: "/nowjs/now.js"
      if content?.js
        script "data-main": "javascripts/#{content.js}", src: "/javascripts/require.js"
      content?.head?()

    body ->
      content?.body?()
