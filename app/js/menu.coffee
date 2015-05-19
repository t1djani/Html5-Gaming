Phaser = require 'Phaser'

class Menu extends Phaser.State
  constructor: -> super

  create: ->
    logo = @add.sprite @game.world.centerX, @game.world.centerY, 'dbz-logo'
    logo.anchor.setTo 0.5, 0.5

    @song = @add.audio 'gameMusic'
    @song.play '', 0, 1, true  # Loop

  update: ->
    if @input.activePointer.justPressed()
      @state.start 'Game'

module.exports = Menu
