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
  understood = ["Okay sir!", "Again? Right.", "I'm on it!", "I got it :wink:"]
  
  # Regex explanation for example : hubot remember 01h25m40s Deploy QUA env
  # Group 1 => 01
  # Group 2 => h
  # Group 3 => 25
  # Group 4 => m
  # Group 5 => 40
  # Group 6 => s
  # Group 7 => Deploy QUA Env
  robot.respond /remember\s+(\d\d+)([a-zA-Z]+)(\d\d+)([a-zA-Z]+)(\d\d+)([a-zA-Z]+)\s+(.*)$/i, (res) ->
    res.reply res.random understood
    hours = res.match[1]
    minutes = res.match[3]
    seconds = res.match[5]
    message = res.match[7]
    time = (hours * 3600000) + (minutes * 60000) + (seconds * 1000)
    dt = new Date()
    timeUTC = dt.toUTCString()
    setTimeout (-> res.reply " REMEMBER : #{message} (started at #{timeUTC})"), time





