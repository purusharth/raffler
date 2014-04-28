class Raffler.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  events:
    'submit #new_entry': 'createEntry'
    'click #draw': 'drawWinner'

  initialize: ->
    @collection.on('reset', @render, @)
    @collection.on('add', @render, @)
    @collection.on('change', @render, @)
    @collection.on('highlight', @highlightWinner, @)

  render: ->
    $(@el).html(@template(entries: @collection))
    @
  
  createEntry: (event) ->
    event.preventDefault()
    @collection.create name: $('#new_entry_name').val()

  drawWinner: (event) ->
    event.preventDefault()
    @collection.drawWinner()  

  highlightWinner: ->
    $('.winner').addClass('highlight')  
