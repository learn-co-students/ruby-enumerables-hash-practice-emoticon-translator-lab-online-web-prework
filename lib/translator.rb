require "yaml"
require "pp"

def load_library(file)
  data = YAML.load_file(file) # pulled file into this file
  emo_hash = {} # created hash for new hash
  values = { # coverted string into hash
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  pp data
  values.each do|meaning,emoticon|
    emoticon.each do |emoji|
      if emo_hash[emoji] == nil
        emo_hash[emoji]= {}
      if emo_hash[emoji][get_meaning][get_emoticon] == nil
        emo_hash[emoji][get_meaning][get_emoticon] = {}
  #if emo_hash[get_meaning][get_emoticon] == nil
    #emo_hash
  #values
          end
      end
    end
end
end
def get_japanese_emoticon(western_emoji)
  # code goes here
end

def get_english_meaning(emoji)
  # code goes here
end
