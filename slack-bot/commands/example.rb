module SlackBot
  module Commands
    class Example < SlackRubyBot::Commands::Base
      command 'example' do |client, data, _match|
        client.say(channel: data.channel, text: 'Hello world!')
      end
    end
  end
end