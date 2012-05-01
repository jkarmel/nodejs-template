exports.hardcode = {}

exports.hardcode.application = (content) ->
  doctype 5
  html ->
    head ->
      script src: "/nowjs/now.js"
      script src: "/require.js"
      content?.head?()

    body ->
      content?.body?()
