require 'yaml'
require 'pry'

def load_library(file_path)
  emoticon = YAML.load_file("#{file_path}")
  emo = {get_meaning: {}, get_emoticon: {} }
    emoticon.each do |meaning, value|
      emo[:get_meaning][value[1]] = meaning
      emo[:get_emoticon][value[0]] = emoticon[meaning][1]
    end
  emo
end

def get_japanese_emoticon(file_path, single)
  emo_hash = load_library(file_path)
  sorry_message = "Sorry, that emoticon was not found"
    if emo_hash[:get_emoticon].has_key?(single)
      emo_hash[:get_emoticon][single]
    else 
      return sorry_message
    end 
end 

def get_english_meaning(file_path, single)
  emo_hash = load_library(file_path)
  sorry_message = "Sorry, that emoticon was not found"
    if emo_hash[:get_meaning].has_key?(single)
        emo_hash[:get_meaning][single]
      else
        return sorry_message
      end
  #binding.pry
end

