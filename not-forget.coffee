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
#   hubot remember <number> <format> <message>
#
# Author:
#   maximegil <maxime.gil.pro@gmail.com>
#

module.exports = (robot) ->
  hours = ["h", "H", "hour", "hours"]
  minutes = ["m", "M", "minute", "minutes"]
  secondes = ["s", "S", "second", "seconds"]
  understood = ["Okay sir!", "Again? Right...", "That's my job! I'm your memory :yum:", "I accept :blush:", "It's okay :wink:"]

  robot.respond /remember\s+(\d+)\s+([a-zA-Z]+)\s+(.*)$/i, (res) ->
    res.reply res.random understood
    number = res.match[1]
    format = res.match[2]
    message = res.match[3]
    if format in hours
      setTimeout (-> res.reply " Remember buddy => " + message), number * 3600000
    if format in minutes
      setTimeout (-> res.reply " Remember buddy => " + message), number * 60000
    if format in secondes
      setTimeout (-> res.reply " Remember buddy => " + message), number * 1000




