class Raffler.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'                
  index: ->
    alert "This is a test"
  initialize: -> 
    #new Raffler.Routers.Entries
    #Backbone.history.start()