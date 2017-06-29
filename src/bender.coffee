# Description
#   hubot script to impersonate Bender from Futurama
#
# Configuration:
#   none
#
# Commands:
#   hubot bender on - starts responding to room messages with bender quotes
#   hubot bender off - stops responding with bender quotes
#
# Author:
#   Sam Roquitte <samroq@yahoo.com>

module.exports = (robot) ->
  benderQuotes = [
    'Hey. What kind of party is this? There\'s no booze and only one hooker.',
    'That was stupid',
    'Your an ass',
    'Your mother',
    'Up yours',
    'I\'ll punchify your face',
    '... the PTA has disbanded',
    'It was a pornography store, I was buying pornography',
    'I\'ll show you who is a booger blaster. I\'ll blast a booger so big...',
    'That\'s what she said',
    'Supercollider? I hardly knew her!',
    'Hey baby... want to kill all humans?',
    'Bite my shiny metal ass Todd!',
    'Aw, I just made myself feel bad.',
    'There. This\'ll teach those filthy bastards who\'s lovable.',
    'Aw, it\'s nothing a lawsuit won\'t cure.',
    'Stupid can opener! You killed my father, and now you\'ve come back for me!',
    'You guys realize you live in a sewer, right? ',
    'I\'m so lonely. I\'m gonna go eat a bucket of ice cream.',
    'It ain\'t easy. It just proves how great I am. ',
    'Others however will call me the World\'s Sexiest Killing Machine, that\'s fun at parties.',
    'I accept this Nobel Peace Prize not just for myself, but for crime robots everywhere. Skoal! ',
    'Oh, my God! Oh, my God! It\'s Elzar, the TV chef! Oh, kill me now, people!',
    'Impending para un bending! ',
    'But I don\'t belong here. I don\'t like things that are scary and painful.',
    'In the name of all that is good and logical, we give thanks for the chemical energy we are about to absorb. To quote the prophet Jerematic, 10001010101...',
    'Oh, no room for Bender, huh? Fine! I\'ll go build my own lunar lander, with blackjack and hookers. In fact, forget the lunar lander and the blackjack. Ahh, screw the whole thing!'
  ]

  beAnAss = false

  robot.hear /bender on/i, (msg) ->
    beAnAss = true
    msg.send "I'm back baby!"

  robot.hear /bender off/i, (msg) ->
    beAnAss = false
    msg.send "I am bender... please insert gerter"

  robot.hear /(.*)/i, (msg) ->
    if beAnAss
      msg.send msg.random benderQuotes
