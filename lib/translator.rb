require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  hash = { get_meaning: {}, get_emoticon: {} }
  
  emoticons.each do |emoticon|
    hash[:get_meaning][emoticon[1][1]] = emoticon[0]
  end
  
  emoticons.each do |emoticon|
    hash[:get_emoticon][emoticon[1][0]] = emoticon[1][1]
  end
  
  return hash
end

def get_japanese_emoticon(file_path, emoticon)
  hash = load_library(file_path)
  
  if hash[:get_emoticon][emoticon] != nil
    return hash[:get_emoticon][emoticon]
  end
  
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon)
  hash = load_library(file_path)
  
  if hash[:get_meaning][emoticon] != nil
    return hash[:get_meaning][emoticon]
  end
  
  return "Sorry, that emoticon was not found"
end
