# Itamae::Plugin::Recipe::Prometheus

[![Gem Version](https://badge.fury.io/rb/itamae-plugin-recipe-prometheus.svg)](https://badge.fury.io/rb/itamae-plugin-recipe-prometheus)
[![wercker status](https://app.wercker.com/status/94c3dcbb718fab8480d75172cba4f9de/m/master "wercker status")](https://app.wercker.com/project/byKey/94c3dcbb718fab8480d75172cba4f9de)

Itamae plugin to install prometheus

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-recipe-prometheus'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itamae-plugin-recipe-prometheus

## Usage

### Recipe

```ruby
# your recipe
include_recipe "prometheus::default"
```

### Node

```yaml
# node.yml
prometheus:
  # target prometheus version
  version: 2.1.0
```

## Testing

requirements [Vagrant](https://www.vagrantup.com/)

```sh
bundle exec rake itamae:default
bundle exec rake spec:default
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
