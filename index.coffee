shelljs = require 'shelljs'

module.exports = (list) ->
  latesthash = 'http://blockchain.info/q/latesthash'
  latesthash = shelljs.exec("curl -s #{latesthash}", {silent: true}).output
  random_number = parseInt(latesthash, 16)
  selected_index = random_number % list.length
  list[selected_index]
