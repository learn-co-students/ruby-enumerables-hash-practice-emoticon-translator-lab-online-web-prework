require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  translation = {get_meaning: {}, get_emoticon: {}}
  
  emoticons.each do |key, value|
    translation[:get_meaning][value[1]] = key
    translation[:get_emoticon][value[0]] = value[1]
  end
  
  translation
end


def get_japanese_emoticon(file_path, emoticon)
  translation = load_library(file_path)[:get_emoticon][emoticon]
  translation ? translation : "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon)
  meaning = load_library(file_path)[:get_meaning][emoticon]
  meaning ? meaning : "Sorry, that emoticon was not found"
end