# require modules here
require 'yaml'
require 'pry'

def load_library(the_file)
emot = {:get_meaning => {}, :get_emoticon => {} }
emoji = YAML.load_file(the_file)
emoji.each do |eng_word, array_emot|
emot[:get_meaning][array_emot[1]] = eng_word
emot[:get_emoticon][array_emot[0]] = array_emot[1] 
#binding.pry
  end
  emot
end

def get_japanese_emoticon(the_file, get_em)
  load_library(the_file)
  if get_emoticon
  #binding.pry
end

def get_english_meaning
  # code goes here
end