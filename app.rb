require_relative 'config/environment'

class App < Sinatra::Base


  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    result = params[:user_phrase]
    phrase = PigLatinizer.new
    @result = phrase.piglatinize(result)
    erb :results
  end





end