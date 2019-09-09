require 'pry'
require 'yaml'

def load_library(file)
  
  emoticons_hash = YAML.load_file(file)             #load the yaml file
  
  get_info = {get_meaning: {}, get_emoticon: {}}    #create a hash to gather the information
  
  emoticons_hash.each do |meaning, emoji|           #iterate through the yaml file
    get_info[:get_meaning][emoji[1]] = meaning      #grab the japanese emoji and translate it to a meaning
    get_info[:get_emoticon][emoji[0]] = emoji[1]    #translate by giving the English emoji
  end
  get_info                                          #RETURN THE VALUE
end

def get_japanese_emoticon(yaml, eng_emoji)
  library = load_library(yaml)                                #load the library using the given yaml file
  
  library                                                     #Actually loading it
  
  if library[:get_emoticon].include?(eng_emoji)                   #checks to see if the library includes the given emoticon
    library[:get_emoticon][eng_emoji]                             #returns the equivalent of the emoticon in Japanese
  else
    "Sorry, that emoticon was not found"
  end
  
  
end

def get_english_meaning(yaml, jap_emoji)
  library = load_library(yaml)                                #load the library using the given yaml file
  
  library                                                     #Actually loading it
  
  if library[:get_meaning].include?(jap_emoji)                   #checks to see if the library includes the given emoticon
    library[:get_meaning][jap_emoji]                             #returns the equivalent of the emoticon in English
  else
    "Sorry, that emoticon was not found"
  end
end

#Overall, the basis is asking if you are translating from English, you already know the meaning. You want to :get_emoticon and send it out to your friends! However, if you receive an emoji, you need to :get_meaning in order to make sense of it!