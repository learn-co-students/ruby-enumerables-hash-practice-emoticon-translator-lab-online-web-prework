require "yaml"

def load_library(file)
  emoticons = YAML.load_file(file)
  new_emoticons = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  emoticons.each_with_object(new_emoticons) do |(meaning, emoticon_array), new_emoticons|
  japanese_emoticon = emoticon_array[1]
  english_emoticon = emoticon_array[0]
  new_emoticons[:get_meaning][japanese_emoticon] = meaning
  new_emoticons[:get_emoticon][english_emoticon] = japanese_emoticon
  end 
  new_emoticons
end

def get_japanese_emoticon(file, english_emoticon)
  new_emoticons = load_library(file)
  new_emoticons[:get_emoticon].find(Proc.new {"Sorry, that emoticon was not found"}) do |key, value|
    if english_emoticon == key
      return value 
    end 
  end 
end

def get_english_meaning(file, japanese_emoticon)
  new_emoticons = load_library(file)
  new_emoticons[:get_meaning].find(Proc.new {"Sorry, that emoticon was not found"}) do |key, value|
    if japanese_emoticon == key 
      return value 
    end 
  end 
  # code goes here
end