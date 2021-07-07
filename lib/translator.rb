# require modules here

def load_library
  require "yaml"
  emoticons = YAML.load_file (emoticons.yml)
end

def get_japanese_emoticon
  hash={:get_meaning => {"Japanese_emoticons"(emoticons.yml)}}
end

def get_english_meaning
  hash={:get_emoticon => {"English_emoticons"(emoticons.yml)}}
end

def emoticons.each 
  do 
    |english_emoticon, japanese_emoticon, meaning|(emoticons.yml)
  end 