# require modules here

require "yaml" 
require "pry"

def load_library(file)
  emoticons = YAML.load_file(file)
  new_hash = {:get_emoticon => {:english_emotion => {}}, :get_meaning => {:japanese_emoticon => {}}}
  emoticons.each do |key, value|

      if !new_hash[:get_meaning][:japanese_emoticon][value[1]]
        new_hash[:get_meaning][:japanese_emoticon][value[1]] = key
      end
      
      if !new_hash[:get_emoticon][:english_emotion][value[0]]
        new_hash[:get_emoticon][:english_emotion][value[0]] = key
      end
  end
  # binding.pry
  new_hash
end

def get_japanese_emoticon(file_path, english_emoticon)
  # input english emoticon, outputs japanese_emoticon
  emoticonz = load_library(file_path)
  return_value = "Sorry, that emoticon was not found"
  if emoticonz[:get_emoticon][:english_emotion][english_emoticon]
     emotional_description = emoticonz[:get_emoticon][:english_emotion][english_emoticon]
  japanese_emoticon = emoticonz[:get_meaning][:japanese_emoticon].key(emotional_description)
  return_value = japanese_emoticon
  else
    return_value
  end 
  return_value
end

def get_english_meaning(file_path, japanese_emoticon)
  # code goes here input japanese_emoticon, output english_emoticon
  emoticonz = load_library(file_path)
  
  return_value = "Sorry, that emoticon was not found"
  if emoticonz[:get_meaning][:japanese_emoticon][japanese_emoticon]
     emotional_description = emoticonz[:get_meaning][:japanese_emoticon][japanese_emoticon]
  english_emoticon = emoticonz[:get_emoticon][:english_emoticon].key(emotional_description)
  return_value = english_emoticon
  else
    return_value
  end 
  return_value
  # binding.pry
end