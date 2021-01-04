# require modules here
require 'pry'
require "yaml"

def load_library(emojo_file)
  data = YAML.load_file(emojo_file)
    
  hash = {
          'get_meaning' => {},
          'get_emoticon' => {}
  }

  data.each do|key,value|
  hash['get_emoticon'][value[0]] = data[key][1]
  hash['get_meaning'][value[1]] = key
  end
  hash
end




def get_japanese_emoticon(emojo_file,emoticon)
  j_emoji = load_library(emojo_file)['get_emoticon'][emoticon]
  j_emoji ? j_emoji : "Sorry, that emoticon was not found"
  # if j_emoji == true
  # elsif j_emoji
  #   if j_emoji == nil
  #   puts "Sorry, that emoticon was not found"
  # end 
#end
end

def get_english_meaning(emojo_file,emoticon)
  e_word = load_library(emojo_file)['get_meaning'][emoticon]
  e_word ? e_word : "Sorry, that emoticon was not found"
end