# Gem
Fast, unopinionated, minimalist web framework for [Crystal](https://crystal-lang.org/) trying to ressemble like [express](https://github.com/expressjs/express) (NodeJS Framework).

```crystal
require "gem";

app = Gem.new

app.get "/" do |req, res|
  res.send "Hello world"
end

app.listen 3000
```

## Installation
Before installing, [download and install](https://crystal-lang.org/docs/installation/) Crystal.

1. Add the dependency to your `shard.yml`:
```yaml
dependencies:
  gem:
    github: quantumsheep/gem
```
2. Run `shards install`


## Contributing

1. Fork it (<https://github.com/your-github-user/gem/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [QuantumSheep](https://github.com/quantumsheep) - creator and maintainer
