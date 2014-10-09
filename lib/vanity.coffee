html-tabView = require './html-tab-view'

module.exports =
  html-tabView: null

  activate: (state) ->
    @html-tabView = new html-tabView(state.html-tabViewState)

  deactivate: ->
    @html-tabView.destroy()

  serialize: ->
    html-tabViewState: @html-tabView.serialize()
