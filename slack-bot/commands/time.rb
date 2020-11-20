module SlackBot
    module Commands
      class Time < SlackRubyBot::Commands::Base
        command 'time' do |client, data, _match|
        time= time.now
          client.say(channel: data.channel, text: "its time")
        end
      end
    end
  end
#module SlackBot
#    module Commands
#      class Time < SlackRubyBot::Commands::Base
#        command 'time' do |client, data, _match|
#          time = Time.new
#          actualTime = time.strftime("%k:%M")
#          client.say(channel: data.channel, text: 'time command')
#        end
#      end
#    end
#  end