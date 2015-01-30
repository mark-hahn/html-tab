
# lib/html-tab

HtmlTabView = require './html-tab-view'

module.exports =
class HtmlTab
  constructor: (@tabTitle) ->
    
  getTitle:     -> @tabTitle
  getViewClass: -> HtmlTabView
  
