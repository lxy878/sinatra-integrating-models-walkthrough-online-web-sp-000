require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]

    my_text = TextAnalyzer.new("The rain in Spain stays mainly on the plain.")
    my_text.count_of_words
    my_text.count_of_vowels
    my_text.count_of_consonants
    my_text.most_used_letter
    erb :results
  end
end
