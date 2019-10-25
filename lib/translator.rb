# require modules here
require "yaml"
require 'pry'

def load_library(file)
  # code goes here
  emotes_list = YAML.load_file(file)
  emotes = {"get_meaning" => {}, "get_emoticon" => {}}
  #end
  
 emotes_list.each_pair do |meaning, values|
   
   #binding.pry
    emotes["get_meaning"][values[1]] = meaning
    emotes["get_emoticon"][values[0]] = values[1]
  end
  #binding.pry
  emotes
end

def get_japanese_emoticon(file, emoticon)
  # code goes here
  emoticon_list = load_library(file)
  if emoticon_list["get_emoticon"].has_key?(emoticon)
    p emoticon_list["get_emoticon"][emoticon]
  else
    p "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file, emoticon)
  # code goes here
   emoticon_list = load_library(file)
  if emoticon_list["get_meaning"].has_key?(emoticon)
    p emoticon_list["get_meaning"][emoticon]
  else
    p "Sorry, that emoticon was not found"
  end
end