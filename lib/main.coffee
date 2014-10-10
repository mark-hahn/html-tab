
# lib/main

HtmlTab = require './html-tab'

module.exports =
  activate: -> 
    atom.workspaceView.command "html-tab:open", =>
      atom.workspace.activePane.activateItem new HtmlTab "I'm Alive!"

