# require modules here
require "yaml"
require "pp"


def load_library(path)
  emoticons = YAML.load_file(path)
  translation_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  
  emoticons.each_pair do |key, value|
    translation_hash["get_meaning"][value[1]] = key
    translation_hash["get_emoticon"][value[0]] = value[1]
  end
  
  return translation_hash
end

def get_japanese_emoticon(path, emoticon)
  decoder_hash = load_library(path)
  
  translated_emoticon = decoder_hash["get_emoticon"][emoticon]
  
  if translated_emoticon == nil 
    return "Sorry, that emoticon was not found"
  else
    return translated_emoticon
  end
end

def get_english_meaning(path, emoticon)
  decoder_hash = load_library(path)
  
  translated_emoticon = decoder_hash["get_meaning"][emoticon]
  
  if translated_emoticon == nil 
    return "Sorry, that emoticon was not found"
  else
    return translated_emoticon
  end
end