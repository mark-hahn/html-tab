
# lib/html-tab

{Emitter}   = require 'emissary'
HtmlTabView = require './html-tab-view'

module.exports =
class HtmlTab
  
  # This may appear to not be used but the tab opener code requires it
  Emitter.includeInto @
  
  constructor: (@tabTitle) ->
  
  getTitle:     -> @tabTitle
  getViewClass: -> HtmlTabView
  
