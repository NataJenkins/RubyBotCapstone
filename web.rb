require 'sinatra/base'

module SlackBot
  class Web < Sinatra::Base
    get '/' do
      'Slack Bot working...'
    end
  end
end