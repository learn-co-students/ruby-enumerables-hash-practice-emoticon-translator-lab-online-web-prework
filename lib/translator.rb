# require modules here
require 'pp'
require "yaml"

def load_library(path)
  # code goes here
  result = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  emoticons = YAML.load_file(path)

  emoticons.each do |key, value|
    english_emoticon = value[0]
    japanese_emoticon = value[1]
    result[:get_meaning][japanese_emoticon] = key
    result[:get_emoticon][english_emoticon] = japanese_emoticon
  end
  
  result
end

def get_japanese_emoticon(path, english_emoticon)
  # code goes here
  library = load_library(path)
  return "Sorry, that emoticon was not found" if !library[:get_emoticon][english_emoticon]
  japanese_emoticon = library[:get_emoticon][english_emoticon]
end

def get_english_meaning(path, japanese_emoticon)
  # code goes here
  library = load_library(path)
  return "Sorry, that emoticon was not found" if !library[:get_meaning][japanese_emoticon]
  english_meaning = library[:get_meaning][japanese_emoticon]
end