module SlackBot
  module Commands
    class Hello < SlackRubyBot::Commands::Base
      command 'Hello' do |client, data, _match|
        client.say(channel: data.channel, text: 'Hello, im a Ruby Bot!')
      end
    end
  end
end