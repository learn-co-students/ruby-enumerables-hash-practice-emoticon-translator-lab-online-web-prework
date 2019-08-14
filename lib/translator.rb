require "yaml"

def load_library(lib)
  emoticons = YAML.load_file(lib)
  
  hash = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }
  
  emoticons.each do |k, v|
    hash['get_meaning'][v[1]] = k
    hash['get_emoticon'][v[0]] = emoticons[k][1] # location of Japanese versions
    
  end
return hash
end


def get_japanese_emoticon(file, emoticon)
  xx = load_library(file)['get_emoticon'][emoticon] 
  xx ? xx : "Sorry, that emoticon was not found"
end

def get_english_meaning(file, emoticon)
  xx = load_library(file)['get_meaning'][emoticon]
  xx ? xx : "Sorry, that emoticon was not found"
end