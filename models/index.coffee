mongoose = require 'mongoose'
mongoose.connect process.env.MONGOHQ_URL, (error) ->
  if error
    console.error "Could not connect to MongoDB"
    throw error