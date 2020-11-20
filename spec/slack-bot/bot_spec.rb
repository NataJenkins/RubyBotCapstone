require 'spec_helper'

describe SlackBot::Bot do
  def app
    SlackBot::Bot.instance
  end

  subject { app }

  it_behaves_like 'a slack ruby bot'
end