# rubocop:disable Layout/LineLength
require 'spec_helper'

describe SlackBot::Commands do
  def app
    SlackBot::Bot.instance
  end

  subject { app }

  it 'returns Hello' do
    expect(message: "#{SlackRubyBot.config.user} hello", channel: 'channel').to respond_with_slack_message('Hello, im a Ruby Bot!')
  end

  it 'returns Bye' do
    expect(message: "#{SlackRubyBot.config.user} bye", channel: 'channel').to respond_with_slack_message('Good bye!')
  end

  it 'returns pic of the day' do
    expect(message: "#{SlackRubyBot.config.user} daily-img", channel: 'channel').to respond_with_slack_message(/http/)
  end

  it 'returns command' do
    expect(message: "#{SlackRubyBot.config.user} alo", channel: 'channel').to respond_with_slack_message("Sorry <@user>, I don't understand that command!")
  end
end

# rubocop:enable Layout/LineLength
