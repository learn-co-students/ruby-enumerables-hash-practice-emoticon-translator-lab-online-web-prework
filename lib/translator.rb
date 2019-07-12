# require modules here
require "pry"
require 'yaml'

emotes = YAML.load_file(lib/emoticons.yml)

def load_library(emotes)
  # code goes here
  emote_storage = {'get_meaning' =>{},'get_emoticon'=>{}}
  binding.pry
  #emotes.each {|japanese_emoticon| emote_storage[]}
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
