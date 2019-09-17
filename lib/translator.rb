require "yaml"

def load_library(path)
  library = YAML.load_file(path)
  emoticons = {get_meaning: {}, get_emoticon: {}}
  library.each_pair{|key, value|
    emoticons[:get_meaning][value[1]] = key
    emoticons[:get_emoticon][value[0]] = value[1]
  }
  emoticons
end

def get_japanese_emoticon(path, emoticon)
  emoticons = load_library(path)
  return "Sorry, that emoticon was not found" unless emoticons[:get_emoticon][emoticon]
  emoticons[:get_emoticon][emoticon]
end

def get_english_meaning(path, emoticon)
  emoticons = load_library(path)
  return "Sorry, that emoticon was not found" unless emoticons[:get_meaning][emoticon]
  emoticons[:get_meaning][emoticon]
end