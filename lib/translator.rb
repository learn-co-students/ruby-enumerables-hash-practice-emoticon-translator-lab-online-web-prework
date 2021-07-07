# require modules here
require 'yaml'

def load_library(file)
  
  emoticons = YAML.load_file(file)
  emot_hash = { "get_meaning" => {},
  "get_emoticon" => {}
  }
  emoticons.each do |meaning, emot|
    emot_hash["get_emoticon"][emot[0]] = emoticons[meaning][1]
    emot_hash["get_meaning"][emot[1]]= meaning
  end
    emot_hash
end


def get_japanese_emoticon(file, emoji)
  result = load_library(file)["get_emoticon"][emoji] 
  
   result ? result : "Sorry, that emoticon was not found"
  
end #method end


def get_english_meaning(file,emot)
  result = load_library(file)["get_meaning"][emot]
  result ? result : "Sorry, that emoticon was not found"
end




