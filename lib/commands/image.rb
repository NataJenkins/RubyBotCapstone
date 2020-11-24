module SlackBot
  module Commands
    class DailyImage < SlackRubyBot::Commands::Base
      command 'daily-img' do |client, data, _match|
        client.say(channel: data.channel, text: 'https://www.nationalgeographic.com/photography/photo-of-the-day')
      end
    end
  end
end
