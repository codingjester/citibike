# Citibike

Gets information about Citibike. Stations, helmets and branches are available.

## Installation

Add this line to your application's Gemfile:

    gem 'citibike'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install citibike

## Usage

Using the gem is fairly easy.
```
require 'citibike'

>>> Citibike.new.stations

>>> Citibike.new.helmets

>>> Citibike.new.branches
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
