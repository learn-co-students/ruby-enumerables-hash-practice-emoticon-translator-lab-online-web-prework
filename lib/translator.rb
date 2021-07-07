require "yaml"

def load_library(file_path)
loadlib = YAML.load_file(file_path)
emotlib = {"get_meaning" => {}, "get_emoticon" => {}}
loadlib.each do |meaning, emoticons|
   emotlib["get_meaning"][emoticons[1]] = meaning
   emotlib["get_emoticon"][emoticons[0]] = emoticons[1]
 end
 emotlib
 end

load_library('./lib/emoticons.yml')

def get_japanese_emoticon(file_path = '.lib/emoticons.yml', english_emoticon)
  library = load_library(file_path)
  if library["get_emoticon"].include?(english_emoticon)
    library["get_emoticon"][english_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end
  
load_library('./lib/emoticons.yml') 
def get_english_meaning(file_path = '.lib/emoticons.yml', japanese_emoticon)
  library = load_library(file_path)
  if library["get_meaning"].include?(japanese_emoticon)
    library["get_meaning"][japanese_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end
