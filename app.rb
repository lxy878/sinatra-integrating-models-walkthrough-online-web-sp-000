require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]
    puts text_from_user.class
    text_analyzer = TextAnalyzer.new(text_analyzer)
    puts text_analyzer.count_of_vowels
    erb :results
  end
end
