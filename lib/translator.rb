require 'yaml'
require 'pry'
def load_library(file_path)
  emoticons = YAML.load_file(file_path)
hash = {get_meaning: {}, get_emoticon: {}}
emoticons.each do |key, array|
  hash[:get_meaning][array[1]] = key
  hash[:get_emoticon][array[0]] = array[1]
end
hash 
end
  

 def get_japanese_emoticon(file_path, emoticon)
  if load_library(file_path)[:get_emoticon][emoticon] === nil 
    return "Sorry, that emoticon was not found"
  else 
      load_library(file_path)[:get_emoticon][emoticon]


end
    end


def get_english_meaning(file_path, emoticon)
  if load_library(file_path)[:get_meaning][emoticon] === nil 
    return "Sorry, that emoticon was not found"
  else
    load_library(file_path)[:get_meaning][emoticon]
  end
end