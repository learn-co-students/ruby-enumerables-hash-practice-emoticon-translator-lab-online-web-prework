# require modules here
require "yaml"

def load_library(yml_file)
  emote = YAML.load_file(yml_file)
  translator = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  
  emote.each do |meaning, translation|
    english = translation[0]
    japanese = translation[1]
    translator["get_meaning"][japanese] = meaning
    translator["get_emoticon"][english] = japanese
  end
  translator
end

def get_japanese_emoticon(file_path, emoticon)
  japanese_emoticon = load_library(file_path)["get_emoticon"][emoticon]
  if japanese_emoticon 
    return japanese_emoticon
  else 
    return "Sorry, that emoticon was not found"
  end
  
end

def get_english_meaning(file_path, emoticon)
  english_meaning = load_library(file_path)["get_meaning"][emoticon]
  if english_meaning
    return english_meaning
  else 
    return "Sorry, that emoticon was not found"
  end
end