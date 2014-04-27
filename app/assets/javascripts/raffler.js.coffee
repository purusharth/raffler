window.Raffler =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  #initialize: -> alert 'Hello from Backbone!'
  initialize: ->
    new Raffler.Routers.Entries
    Backbone.history.start()

$(document).ready ->
  Raffler.initialize()
