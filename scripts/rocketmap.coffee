# Description:
#   Become a teleporter  or  a CyberGlobal real-estate agent
#
# Commands:
#   hubot teleport me <query> - Returns a street view snapshot of the area returned by `query`.

module.exports = (robot) ->

  robot.respond /teleport me (.+)/i, (msg) ->
    console.log(msg.match)
    location = msg.match[1]
    mapUrl =  "https://maps.googleapis.com/maps/api/streetview?" +
              "&size=600x300&location=" +
              escape(location) +
              "&format=png" # So campfire knows it's an image
    url    =  "http://maps.google.com/maps?q=" +
              escape(location) +
              "&hl=en&sll=37.0625,-95.677068&sspn=73.579623,100.371094&vpsrc=0&hnear=" +
              escape(location) +
              "&t=m&z=11"
    msg.send mapUrl
    msg.send url