{WorkspaceView} = require 'atom'
html-tab = require '../lib/html-tab'

# Use the command `window:run-package-specs` (cmd-alt-ctrl-p) to run specs.
#
# To run a specific `it` or `describe` block add an `f` to the front (e.g. `fit`
# or `fdescribe`). Remove the `f` to unfocus the block.

describe "html-tab", ->
  activationPromise = null

  beforeEach ->
    atom.workspaceView = new WorkspaceView
    activationPromise = atom.packages.activatePackage('html-tab')

  describe "when the html-tab:open event is triggered", ->
    it "attaches and then detaches the view", ->
      expect(atom.workspaceView.find('.html-tab')).not.toExist()

      # This is an activation event, triggering it will cause the package to be
      # activated.
      atom.workspaceView.trigger 'html-tab:open'

      waitsForPromise ->
        activationPromise

      runs ->
        expect(atom.workspaceView.find('.html-tab')).toExist()
        atom.workspaceView.trigger 'html-tab:open'
        expect(atom.workspaceView.find('.html-tab')).not.toExist()
