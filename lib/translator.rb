# require modules here
require 'yaml'

def load_library(path)
  # code goes here
  emoticons = YAML.load_file(path)
  emoticon_hash = Hash.new

  emoticon_hash["get_emoticon"] = Hash.new
  emoticon_hash["get_meaning"] = Hash.new

  emoticons.each do |english_symbol, emoticon_symbol|
    emoticon_hash["get_emoticon"][emoticon_symbol.first] = emoticon_symbol.last
    emoticon_hash["get_meaning"][emoticon_symbol.last] = english_symbol
  end
  emoticon_hash
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_emoticon"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found"
  end
  result
end

def get_english_meaning(path, emoticon)
  # code goes here
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_meaning"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found"
  end
  result
end
