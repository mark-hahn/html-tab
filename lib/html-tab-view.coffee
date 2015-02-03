
# lib/html-tab-view

{View} = require 'atom-space-pen-views'

module.exports =
class HtmlTabView extends View
  
  @content: ->
    @div =>
      @canvas width:165, height:145

  initialize: ->
    context = @find('canvas')[0].getContext("2d")
    width = 125
    height = 105
    padding = 20
    context.beginPath()
    context.moveTo padding + width / 2, padding
    context.lineTo padding + width, height + padding
    context.lineTo padding, height + padding
    context.closePath()
    context.fillStyle = "#ffc821"
    context.fill()
    