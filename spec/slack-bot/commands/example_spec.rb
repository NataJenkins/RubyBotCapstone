require 'spec_helper'

describe SlackBot::Commands::Example do
  def app
    SlackBot::Bot.instance
  end

  subject { app }

  it 'returns Hello world!' do
    expect(message: "#{SlackRubyBot.config.user} example", channel: 'channel').to respond_with_slack_message('Hello world!')
  end
end