# require modules here
require 'yaml'
require 'pry'
require 'pp'

def load_library(emoticon)
  list = YAML.load_file(emoticon)
  hash = {}
    hash[:get_meaning] = {}
    hash[:get_emoticon] = {}
   
  list.each do |get_meaning, get_emoticon|
    hash[:get_meaning][get_emoticon[1]] = get_meaning
    hash[:get_emoticon][get_emoticon[0]] = get_emoticon[1]
  end 
  hash
end

def get_japanese_emoticon (emoticon, value)
  
  library = load_library(emoticon)
  
  result = library[:get_emoticon][value]
  
  if result == nil 
    result = "Sorry, that emoticon was not found"
  end
  result
end


def get_english_meaning(emoticon, value)
  library = load_library(emoticon)
  result = library[:get_meaning][value]
  
  if result == nil 
    result = "Sorry, that emoticon was not found"
  end
  result 
end