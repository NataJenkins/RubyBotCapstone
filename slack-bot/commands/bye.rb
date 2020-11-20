module SlackBot
  module Commands
    class Bye < SlackRubyBot::Commands::Base
      command 'Bye' do |client, data, _match|
        client.say(channel: data.channel, text: "Good bye!")
      end
    end
  end
end