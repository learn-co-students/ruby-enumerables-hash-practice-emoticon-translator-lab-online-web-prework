# require modules here
  require "yaml"

def load_library(file_path)
  data = YAML.load_file(file_path)
  hashy = {:get_meaning => {}, :get_emoticon => {}}
  
  arr = []
    data.each do |key, (value, jap_value)|
      hashy[:get_meaning][jap_value] = key
      hashy[:get_emoticon][value] = jap_value
   end 

  return hashy
end

def get_japanese_emoticon(file_path, emoticon)
  hashy = load_library(file_path)
  if hashy[:get_emoticon][emoticon]
    return hashy[:get_emoticon][emoticon]
  else 
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  hashy = load_library(file_path)
    if hashy[:get_meaning][emoticon]
    return hashy[:get_meaning][emoticon]
  else 
    return "Sorry, that emoticon was not found"
  end
end