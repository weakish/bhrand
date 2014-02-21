request = require 'request'

module.exports = (list, callback) ->
  latesthash = 'http://blockchain.info/q/latesthash'
  request(latesthash, (error, response, body) ->
    if not error and response.statusCode is 200
      lucky_one = parseInt(body, 16) % list.length
      callback(list[lucky_one]))
