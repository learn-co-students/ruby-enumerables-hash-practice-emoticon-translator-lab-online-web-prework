# require 'pry'
require "yaml"

# require modules here

def load_library(library)
  emote_list = YAML.load_file(library)
  translated_hash = {
  :get_meaning => {},
  :get_emoticon => {}
  }
  
  emote_list.each do | item |
   item.each do | meaning |
    emotes = item[1]
    ja_emote = emotes[1]
    en_emote = emotes[0]
    translated_hash[:get_meaning][ja_emote] = meaning unless translated_hash[:get_meaning][ja_emote]
    translated_hash[:get_emoticon][en_emote] = ja_emote unless translated_hash[:get_emoticon][en_emote]
    
   end
  end
  translated_hash
end

def get_japanese_emoticon(library, emoticon)
 emote_list = load_library(library)
 sorry_message = "Sorry, that emoticon was not found"
 if emote_list[:get_emoticon][emoticon]
    emote_list[:get_emoticon][emoticon]
  else 
    sorry_message
  end
end

def get_english_meaning(library, emoticon)
  emote_list = load_library(library)
  sorry_message = "Sorry, that emoticon was not found"
  if emote_list[:get_meaning][emoticon]
    emote_list[:get_meaning][emoticon]
  else
    sorry_message
  end
end