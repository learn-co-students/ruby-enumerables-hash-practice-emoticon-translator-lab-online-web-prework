# require modules here
require 'yaml'

def load_library(path)
  basehash = YAML.load_file(path)
  result = {}
  result[:get_meaning] = basehash.reduce({}) do |memo, (meaning, emoticons)|
    jp_emoticon = emoticons[1]
    memo[jp_emoticon] = meaning 
    memo 
  end 
  result[:get_emoticon] = basehash.reduce({}) do |memo, (meaning, emoticons)|
    (en_emoticon, jp_emoticon) = emoticons
    memo[en_emoticon] = jp_emoticon
    memo
  end 
  result
end

def get_japanese_emoticon(path, en_emoticon)
  library = load_library(path)
  jp_emoticon = library[:get_emoticon][en_emoticon]
  jp_emoticon ? jp_emoticon : "Sorry, that emoticon was not found"
end

def get_english_meaning(path, jp_emoticon)
  library = load_library(path)
  meaning = library[:get_meaning][jp_emoticon]
  meaning ? meaning : "Sorry, that emoticon was not found"
end