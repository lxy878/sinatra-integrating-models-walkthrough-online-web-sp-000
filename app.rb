require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]

    my_text = TextAnalyzer.new("The rain in Spain stays mainly on the plain.")
    puts my_text.count_of_words
    puts my_text.count_of_vowels
    puts my_text.count_of_consonants
    puts my_text.most_used_letter
    erb :results
  end
end
