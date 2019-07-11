# require modules here  
require "yaml"

def load_library(path)
  emoticons = YAML.load_file(path)

   emoticon_hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }

     emoticons.each do |e, j|
      emoticon_hash["get_emoticon"][j[0]] = emoticons[e][1]
      emoticon_hash["get_meaning"][j[1]] = e
    end
  emoticon_hash
  # code goes here
 

end

def get_japanese_emoticon(path, emoticon)
  result = load_library(path)["get_emoticon"][emoticon]
  result ? result : "Sorry, that emoticon was not found"
  # code goes here
end

def get_english_meaning(path, emoticon)
   result = load_library(path)["get_meaning"][emoticon]
   result ? result : "Sorry, that emoticon was not found"
  # code goes here
end