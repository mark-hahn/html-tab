
# lib/main

HtmlTab = require './html-tab'
{CompositeDisposable} = require 'atom'

module.exports =
  activate: -> 
    @subs = new CompositeDisposable
    @subs.add atom.commands.add 'atom-workspace', 'html-tab:open': ->
      atom.workspace.getActivePane().activateItem new HtmlTab "I'm Alive!"

  deactivate: ->
    @subs.dispose()
    