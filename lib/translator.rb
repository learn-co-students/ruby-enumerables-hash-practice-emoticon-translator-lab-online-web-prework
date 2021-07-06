require"yaml"
def load_library(file)
  load_hash = {"get_meaning" => {} , "get_emoticon" =>{} }
  library= YAML.load_file(file)
 library.each do |trans, emote|
  load_hash["get_meaning"][emote[1]]=trans 
  load_hash["get_emoticon"][emote[0]]=emote[1]
end
load_hash
end 
def get_japanese_emoticon(file_path, emoticon)
   library = load_library(file_path) 
  emote_resulting = library['get_emoticon'][emoticon]
emote_resulting ? emote_resulting : "Sorry, that emoticon was not found"
end	

def get_english_meaning(file_path, emoticon) 
  library = load_library(file_path)
  emote_resulting = library["get_meaning"][emoticon]
  emote_resulting ? emote_resulting : "Sorry, that emoticon was not found"
  
end 