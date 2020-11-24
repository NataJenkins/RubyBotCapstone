$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dotenv'
Dotenv.load

require_relative 'slack_bot'
require_relative 'web'

Thread.abort_on_exception = true

Thread.new do
  begin
    SlackBot::Bot.run
  rescue StandardError => e
    warn "ERROR: #{e}"
    warn e.backtrace
    raise e
  end
end

run SlackBot::Web
