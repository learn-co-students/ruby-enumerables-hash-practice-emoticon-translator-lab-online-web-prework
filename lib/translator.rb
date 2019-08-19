# require modules here
require "yaml"


def load_library(file)
  emoticons = YAML.load_file(file)
  emote_translator = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  
  emoticons.reduce({}) do |memo, (key, value)|
   emote_translator[:get_meaning][value[1]] = key
   emote_translator[:get_emoticon][value[0]] = value[1]
  end
  
  
  emote_translator
end

def get_japanese_emoticon(file, emoticon)
  emoticons = load_library(file)

if emoticons[:get_emoticon].include?(emoticon)
  j_emote = emoticons[:get_emoticon][emoticon]
else 
  return "Sorry, that emoticon was not found"
end

j_emote

end

def get_english_meaning(file, emoticon)
  emoticons = load_library(file)
  
  if emoticons[:get_meaning].include?(emoticon)
    e_meaning = emoticons[:get_meaning][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
  
  e_meaning
end