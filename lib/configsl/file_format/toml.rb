# frozen_string_literal: true

require 'configsl'
require 'toml-rb'

module ConfigSL
  module FileFormat
    # Support for TOML files.
    class Toml < ConfigSL::FileFormat::Base
      def self.extensions
        %i[toml]
      end

      def read
        TomlRB.load_file(@file, symbolize_keys: true).each do |name, value|
          yield name, value if block_given?
        end
      end
    end
  end
end
