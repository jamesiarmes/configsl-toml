# frozen_string_literal: true

require_relative 'lib/configsl/toml/version'

Gem::Specification.new do |s|
  s.name        = 'configsl-toml'
  s.version     = ConfigSL::Toml::VERSION
  s.licenses    = ['MIT']
  s.summary     = 'TOML support for ConfigSL.'
  s.description = s.summary
  s.authors     = ['James I. Armes']
  s.email       = 'jamesiarmes@gmail.com'
  s.files       = Dir['lib/**/*'] + Dir['Gemfile']
  s.extra_rdoc_files = %w[README.md CHANGELOG.md]
  s.homepage    = 'https://github.com/jamesiarmes/configsl-toml'
  s.metadata    = {
    'bug_tracker_uri' => 'https://github.com/jamesiarmes/configsl-toml/issues',
    'changelog_uri' => 'https://github.com/jamesiarmes/configsl-toml/blob/main/CHANGELOG.md',
    'homepage_uri' => s.homepage,
    'rubygems_mfa_required' => 'true',
    'source_code_uri' => 'https://github.com/jamesiarmes/configsl-toml'
  }

  s.required_ruby_version = '>= 3.2'

  s.add_dependency 'configsl', '~> 1.0'
  s.add_dependency 'toml-rb', '~> 3.0'
end
