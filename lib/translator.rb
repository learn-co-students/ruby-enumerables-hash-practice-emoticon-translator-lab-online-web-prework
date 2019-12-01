require 'yaml'
require 'pry'

def load_library(file)
  loaded_file = YAML.load_file(file)
loaded_file
end

def get_japanese_emoticon(file, usa_emoticon)
  emoticon_file = load_library(file)
  japan_emoticon = emoticon_file[:get_emoticon][usa_emoticon]
  if !japan_emoticon
    return "Sorry, that emoticon was not found"
  end
japan_emoticon
end

def get_english_meaning(file, japan_emoticon)
  emoticon_file = load_library(file)
  american_meaning = emoticon_file[:get_meaning][japan_emoticon]
  if !american_meaning
    return "Sorry, that emoticon was not found"
  end
american_meaning
end
