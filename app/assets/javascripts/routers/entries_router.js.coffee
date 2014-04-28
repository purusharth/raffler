class Raffler.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'                
  index: ->
    console.log "index start"
    view = new Raffler.Views.EntriesIndex()
    $('#container').html(view.render().el)
    console.log "index end"
  initialize: -> 
    #new Raffler.Routers.Entries
    #Backbone.history.start()