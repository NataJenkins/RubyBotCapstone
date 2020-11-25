$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..'))

require 'slack-ruby-bot/rspec'
require 'webmock/rspec'
require_relative 'support/vcr'
require 'vcr'
require_relative '../bin/main'
