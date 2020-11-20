require 'wolfram-alpha'
module SlackBot
    module Commands
      class Wolf < SlackRubyBot::Commands::Base
        command 'wolf' do |client, data, _match|
            result = Wolfram::Query.new(_match[:expression]).fetch
            hash = Wolfram::HashPresenter.new(result).to_hash
            formated_results = #snip
          client.say(channel: data.channel, text:result)
        end
      end
    end
  end