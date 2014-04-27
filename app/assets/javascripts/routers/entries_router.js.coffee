class Raffler.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'                
  index: ->
    alert "backbone page from router"
  initialize: -> 
    new Raffler.Routers.Entries
    Backbone.history.start()