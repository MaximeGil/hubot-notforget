# Description
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot remember <hours>h<minutes>m<seconds>s <message>
#   example : hubot remember 01h25m40s Deploy QUA env
#
# Author:
#   maximegil <maxime.gil.pro@gmail.com>
#

module.exports = (robot) ->
  understood = ["Okay sir!", "Again? Right.", "I'm on it!"]

  robot.respond /remember\s+(\d\d+)([a-zA-Z]+)(\d\d+)([a-zA-Z]+)(\d\d+)([a-zA-Z]+)\s+(.*)$/i, (res) ->
    res.reply res.random understood
    hours = res.match[1]
    minutes = res.match[3]
    seconds = res.match[5]
    message = res.match[7]
    time = (hours * 3600000) + (minutes * 60000) + (seconds * 1000)

    setTimeout (-> res.reply " Remember buddy => " + message), time




