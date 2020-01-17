# require modules here
require "yaml"
def load_library(path)
  hash = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  emo = YAML.load_file("./lib/emoticons.yml")
  emo.each_key do |key|
    hash[:get_meaning][emo[key][1]] = key
    hash[:get_emoticon][emo[key][0]] =emo[key][1]
  end
  return hash
end

def get_japanese_emoticon(path,emoticon)
  hash = load_library(path)
  return hash[:get_emoticon][emoticon] if hash[:get_emoticon][emoticon]
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(path,emoticon)
  hash = load_library(path)
  return hash[:get_meaning][emoticon] if hash[:get_meaning][emoticon]
  return "Sorry, that emoticon was not found"  
end