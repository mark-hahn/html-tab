
# lib/main

HtmlTab = require './html-tab'
SubAtom = require 'sub-atom'

module.exports =
  activate: -> 
    @subs = new SubAtom
    @subs.add atom.commands.add 'atom-workspace', 'html-tab:open': ->
      atom.workspace.getActivePane().activateItem new HtmlTab "I'm Alive!"

  deactivate: ->
    @subs.dispose()
    