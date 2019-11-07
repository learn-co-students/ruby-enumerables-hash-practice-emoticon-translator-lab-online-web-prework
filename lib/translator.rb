# require modules here
require "yaml"

def load_library(path)
  # code goes here
  hash = YAML.load_file(path)
  #pp(hash)
  result = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  hash.each{ |description, emojis|
    if !result[:get_meaning][emojis[1]]
      result[:get_meaning][emojis[1]] = description
    end
    if !result[:get_emoticon][emojis[0]]
      result[:get_emoticon][emojis[0]] = emojis[1]
    end
  }
  result
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  hash = load_library(path)
  if hash[:get_emoticon][emoticon]
    hash[:get_emoticon][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  # code goes here
  hash = load_library(path)
  if hash[:get_meaning][emoticon]
    hash[:get_meaning][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end
