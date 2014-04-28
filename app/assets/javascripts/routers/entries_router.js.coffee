class Raffler.Routers.Entries extends Backbone.Router
  routes:
    '': 'index' 

  initialize: ->
    @collection = new Raffler.Collections.Entries()
    @collection.fetch({reset: true})  

  index: ->
    console.log "index start"
    view = new Raffler.Views.EntriesIndex(collection: @collection)
    $('#container').html(view.render().el)
    console.log "index end"

