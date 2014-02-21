bhrand
======

Pick a random element from a list accroding to the [latest BTC hash][btchash].

[btchash]: http://blockchain.info/q/latesthash

Install
-------

```sh
npm install bhrand
```

Usage
-----

```coffee
bhrand = require 'bhrand'

bhrand([1..10], (one) ->
  console.log('The one picked is ' + one))
```

Contribute
----------

https://github.com/weakish/bhrand

License
-------

Apache-2.0
