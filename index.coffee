shelljs = require 'shelljs'
itertools = require 'itertools'

module.exports = (list, number) ->
  number = number or 1
  latest_hash = 'http://blockchain.info/q/latesthash'
  latest_hash = shelljs.exec("curl -s #{latest_hash}", {silent: true}).output
  random_number = parseInt(latest_hash, 16)
  list = itertools.permutationsSync(list, number)
  selected_index = random_number % list.length
  list[selected_index]
