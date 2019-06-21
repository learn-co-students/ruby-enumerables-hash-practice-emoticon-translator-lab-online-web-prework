require 'pry'
require 'yaml'
YAML.load_file("./lib/emoticons.yml")


def load_library(path)
  emoticons = YAML.load_file("./lib/emoticons.yml")
  emoticon_lib = { 'get_emoticon' => {},
                   'get_meaning' => {}}
  emoticons.each do |key, value|
    english = value[0]
    japanese = value[1]
    emoticon_lib['get_meaning'][japanese] = key 
    emoticon_lib['get_emoticon'][english] = japanese
      #binding.pry
  end
  return emoticon_lib
end


def get_japanese_emoticon(path, emoticon)
  new_path = load_library(path)
  emoticons_japanese = new_path['get_emoticon'][emoticon]
  emoticons_japanese ? emoticons_japanese : "Sorry, that emoticon was not found"
end
  

def get_english_meaning(path, emoticon)
  new_path = load_library(path)
  emoticons_english = new_path['get_meaning'][emoticon]
  emoticons_english ? emoticons_english : "Sorry, that emoticon was not found"
end

# angel:
# - "O:)"      
#  - "☜(⌒▽⌒)☞"
# angry: