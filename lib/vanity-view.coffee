{View} = require 'atom'

module.exports =
class html-tabView extends View
  @content: ->
    @div class: 'html-tab overlay from-top', =>
      @div "The html-tab package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "html-tab:open", => @open()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  open: ->
    console.log "html-tabView was opend!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
