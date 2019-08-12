# require modules here
#get meaning is {japanese emote => meaning}
#get_emotion is {eng emote => japanese emote}
require "yaml"

def load_library(file_path)
  library = YAML.load_file(file_path)
  sorted = {:get_meaning => {}, :get_emoticon => {}} 
  library.each do |emotion,array| #array is english at i[0] and japanese at i[1]
    sorted[:get_meaning][array[1]] = emotion
    sorted[:get_emoticon][array[0]] = array[1]
  end
  sorted
end

def get_japanese_emoticon(file_path,emoticon_english)
  emoticons = load_library(file_path)
  if emoticons[:get_emoticon].include?(emoticon_english)
    emoticons[:get_emoticon][emoticon_english]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path,japanese_emoticon)
  emoticons = load_library(file_path)
  if emoticons[:get_meaning].include?(japanese_emoticon)
    emoticons[:get_meaning][japanese_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end