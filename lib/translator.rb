# require modules here
require "yaml"


def load_library(file_path)
 emoticons = YAML.load_file(file_path) 
 new_result = {
  :get_meaning => {}, 
  :get_emoticon => {}       
}
emoticons.each do |meaning, value|
 new_result[:get_meaning][value[1]] = meaning
 new_result[:get_emoticon][value[0]] = value[1]
end
new_result
end


def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  new_result = load_library(file_path)
  if new_result[:get_emoticon].include? (emoticon)
  return new_result[:get_emoticon][emoticon] 
else
  return "Sorry, that emoticon was not found"
end
end

def get_english_meaning(file_path, emoticon)
  new_result = load_library(file_path)
  if new_result[:get_meaning].include? (emoticon)
    return new_result[:get_meaning][emoticon]
  else 
    return "Sorry, that emoticon was not found"
end
end
