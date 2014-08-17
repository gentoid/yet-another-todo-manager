require 'rubygems'
require 'spork'

unless ENV['_SPORK_WORKAROUND'] == 'loaded'
  ENV['_SPORK_WORKAROUND'] = 'loaded'
  require_relative 'rails_helper'
end

#uncomment the following line to use spork with the debugger
#require 'spork/ext/ruby-debug'

Spork.prefork do
  # See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
  RSpec.configure do |config|
  end
end

Spork.each_run do
end
