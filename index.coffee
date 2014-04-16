shelljs = require 'shelljs'
itertools = require 'itertools'

module.exports = (list, number) ->
  number = number or 1
  latesthash = 'http://blockchain.info/q/latesthash'
  latesthash = shelljs.exec("curl -s #{latesthash}", {silent: true}).output
  random_number = parseInt(latesthash, 16)
  list = itertools.permutationsSync(list, number)
  selected_index = random_number % list.length
  list[selected_index]

