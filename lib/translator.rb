# require modules here
require "yaml"
require "pry"

def load_library(file)
  emoji_hash = YAML.load_file(file)
  emoji_hash
  new_hash= {
    get_meaning: {}, 
    get_emoticon: {}
     }
     emoji_hash.each do |key,value|
         new_hash[:get_meaning][value[1]] = key
         new_hash[:get_emoticon][value[0]]= value[1]
 end
     new_hash
end

def get_japanese_emoticon(file,english_emoticon)
lib = load_library(file)
if lib[:get_emoticon].include?(english_emoticon)
  lib[:get_emoticon][english_emoticon]
else
  "Sorry, that emoticon was not found"
 # binding.pry 
end
end

def get_english_meaning(file,japanese_emoticon)
lib = load_library(file)
if lib[:get_meaning].include?(japanese_emoticon)
  lib[:get_meaning][japanese_emoticon]
else
  "Sorry, that emoticon was not found"
 # binding.pry 
end
end