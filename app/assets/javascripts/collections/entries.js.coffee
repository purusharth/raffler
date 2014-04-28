class Raffler.Collections.Entries extends Backbone.Collection

  model: Raffler.Models.Entry
  url: 'api/entries'

  drawWinner: ->
    winner = @shuffle()[0]
    if winner
      oldWinner = @findWhere({winner: true})
      if oldWinner
        console.log oldWinner.id
        oldWinner.set(winner: false)
        oldWinner.save()
      winner.set(winner: true)
      winner.save()
      console.log winner.id
      winner.trigger('highlight')