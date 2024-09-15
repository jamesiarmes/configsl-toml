# ConfigSL TOML [![Gem Version][badge-version]][rubygems] [![Coverage Status][badge-coverage]][coverage] [![Code Checks][badge-checks]][checks]

Adds [TOML] file support to [ConfigSL], the simple, modular configuration DSL.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'configsl-toml', '~> 1.0'
```

And then execute:

```sh
bundle install
```

Or install it yourself as:

```sh
gem install configsl-toml
```

## Usage

See the [ConfigSL Usage documentation][configsl-usage] for information on how to
use ConfigSL.

To add TOML support to your configuration class, require `configsl-toml` and
register the file format:

```ruby
require 'configsl'
require 'configsl-toml'

class MyConfig < ConfigSL::Config
    register_file_format :toml

    option :name, type: String, default: 'My App'
    # ...
end
```

[badge-checks]: https://github.com/jamesiarmes/configsl-toml/actions/workflows/checks.yaml/badge.svg?branch=main
[badge-coverage]: https://coveralls.io/repos/github/jamesiarmes/configsl-toml/badge.svg
[badge-version]: https://badge.fury.io/rb/configsl-toml.svg
[checks]: https://github.com/jamesiarmes/configsl/actions/workflows/checks.yaml
[configsl]: https://github.com/jamesiarmes/configsl
[configsl-usage]: https://github.com/jamesiarmes/configsl/blob/main/README.md#usage
[coverage]: https://coveralls.io/github/jamesiarmes/configsl-toml
[rubygems]: https://rubygems.org/gems/configsl-toml
[toml]: https://toml.io/en/
