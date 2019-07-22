# require modules here
require "pry"
require 'yaml'

file_name = "lib/emoticons.yml"

def load_library(file_name)
  # code goes here
  emotes = {'get_meaning' =>{},'get_emoticon'=>{}}

  YAML.load_file(file_name).each do |meaning,emote|
    emotes['get_meaning'].store(emote[1],meaning)
    emotes['get_emoticon'].store(emote[0],emote[1])
  end
emotes

end

def get_japanese_emoticon(file_name,english_emoticon)
  # code goes here
  sorry_message = "Sorry, that emoticon was not found"
  emotes = load_library(file_name)
  emotes['get_emoticon'].each do |english, japanese|
     return japanese if english == english_emoticon
  end
  sorry_message
end

def get_english_meaning(file_name,japanese_emoticon)
  # code goes here
  sorry_message = "Sorry, that emoticon was not found"
  emotes = load_library(file_name)
  emotes['get_meaning'].each do |japanese, meaning|
     return meaning if japanese == japanese_emoticon
  end
  sorry_message
end