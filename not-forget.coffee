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

  robot.respond /remember\s+(\d+)\s+([a-zA-Z]+)\s+(.*)$/i, (res) ->
    number = res.match[1]
    format = res.match[2]
    message = res.match[3]
    if format in hours
      setTimeout (-> res.reply " Remember buddy => " + message), number * 60 * 60 * 1000
    if format in minutes
      setTimeout (-> res.reply " Remember buddy => " + message), number * 60 * 1000
    if format in secondes
      setTimeout (-> res.reply " Remember buddy => " + message), number * 1000




