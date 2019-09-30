# require modules here
require "yaml"

def load_library(path)
  library = YAML.load_file(path)
  
  emoticon_dictionary = {}

  emoticon_dictionary[:get_meaning] = library.reduce({}) do |memo, (key, value)|
     memo[value[1]] = key
     memo
  end
  
  
  emoticon_dictionary[:get_emoticon] = library.reduce({}) do |memo, (key, value)|
    memo[value[0]] = value[1]
    memo
  end
  
  emoticon_dictionary
end

def get_japanese_emoticon(path, emoticon)
  emoticon_dictionary = load_library(path)
  
  if emoticon_dictionary[:get_emoticon].has_key? emoticon
    emoticon_dictionary[:get_emoticon][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, japanese_emoticon)
  emoticon_dictionary = load_library(path)
  if emoticon_dictionary[:get_meaning].has_key? japanese_emoticon
    emoticon_dictionary[:get_meaning][japanese_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end