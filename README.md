bhrand
======

Pick randoms element from a list accroding to the [latest BTC hash][btchash].

[btchash]: http://blockchain.info/q/latesthash

Install
-------

```sh
npm install bhrand
```

Usage
-----

Given `bhrand(list, N)`, It will return a list of N selected elements. (`N >= 1`)

For example, pick 2 "random" numbers from `[1..10]`

```coffee
bhrand = require 'bhrand'

bhrand([1..10], 2)
```

If not specified, `N = 1`.
Thus it will return a list of one element.

Waring: Unless list is very very small, a big N will make the selection very very slow.

Contribute
----------

https://github.com/weakish/bhrand

License
-------

Apache-2.0
