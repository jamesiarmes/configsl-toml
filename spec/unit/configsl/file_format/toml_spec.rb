# frozen_string_literal: true

require 'configsl/file_format/shared_spec'

RSpec.describe ConfigSL::FileFormat::Toml do
  it_behaves_like 'a file format', 'spec-config.toml', %i[toml], {
    format: 'TOML',
    name: 'config.toml',
    nested: { title: 'TOML file for testing' }
  }
end
