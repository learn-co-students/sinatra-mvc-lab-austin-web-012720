require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do

    erb :user_input
  end
  post '/' do
    @input = PigLatinizer.new(params[:user_phrase])
    erb :view
  end



end
