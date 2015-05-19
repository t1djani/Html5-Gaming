Phaser = require 'Phaser'

class Game extends Phaser.State
  constructor: -> super

  update: ->
    @add.tileSprite 0, 0, 1200, 800, 'map'

module.exports = Game
