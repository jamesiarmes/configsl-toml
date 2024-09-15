# frozen_string_literal: true

# Configure code coverage reporting.
if ENV.fetch('COVERAGE', false)
  require 'coveralls'
  require 'simplecov'

  Coveralls.wear!
  SimpleCov.minimum_coverage 95
  SimpleCov.start do
    add_filter '/spec/'
    add_filter '/lib/toml/version.rb'

    track_files 'lib/**/*.rb'
  end
end

RSpec.configure do |config|
  config.shared_context_metadata_behavior = :apply_to_host_groups
end

# Include support files.
require_relative '../lib/configsl-toml'
