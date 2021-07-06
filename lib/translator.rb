# require modules here
require 'yaml'
require 'pry'

def load_library(file)
  emo_file = YAML.load_file(file)
  conversion_hash = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  emo_file.each do |key, value|
    conversion_hash[:get_meaning][value[1]] = key
    conversion_hash[:get_emoticon][value[0]] = emo_file[key][1] #grab val from key meaning /japanese
  end
  conversion_hash
end

def get_japanese_emoticon(path, eng_emo)
  emo_file = load_library(path)
  translation = emo_file[:get_emoticon][eng_emo]
  unless translation == nil
    translation
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, jap_emo)
  emo_file = load_library(path)
  translation = emo_file[:get_meaning][jap_emo]
  unless translation == nil
    translation
  else
    "Sorry, that emoticon was not found"
  end
end

