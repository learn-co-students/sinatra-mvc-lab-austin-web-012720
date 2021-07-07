require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @output = PigLatinizer.new
    @output.piglatinize(params["user_phrase"])
  end
end