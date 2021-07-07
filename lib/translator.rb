# require modules here
require "yaml"
require "pry"
require "pp"


def load_library(path)
  # code goes here
  lib = YAML.load_file(path)
  new_hash = {}
  lib.each do |meaning, eng_jp|
    
      # checks for the key existence
      if !new_hash[:get_meaning]
        # if doesn't exist make it an empty hash
        new_hash[:get_meaning] = {}
      end
      
      # checks for the key/value pair existence
      if !new_hash[:get_meaning][eng_jp[1]]
        # if doesn't exist create the appropriate k/v pair
        new_hash[:get_meaning][eng_jp[1]] = meaning
      end
      
      if !new_hash[:get_emoticon]
        new_hash[:get_emoticon] = {}
      end
      
      if !new_hash[:get_emoticon][eng_jp[0]]
        new_hash[:get_emoticon][eng_jp[0]] = eng_jp[1]
      end
  end
  new_hash
end

def get_japanese_emoticon(path, emoticon)
  # when provided with an eng_emoticon
  # it returns the Japanese equivalent
  lib = load_library(path)
  emoticon_hash = lib[:get_emoticon]
  if !emoticon_hash.include?(emoticon)
    "Sorry, that emoticon was not found"
  else
    emoticon_hash[emoticon]
  end
end

def get_english_meaning(path, jpn_emoticon)
  lib = load_library(path)
  meaning_hash = lib[:get_meaning]
  if !meaning_hash.include?(jpn_emoticon)
    "Sorry, that emoticon was not found"
  else
    meaning_hash[jpn_emoticon]
  end
  # binding.pry
end