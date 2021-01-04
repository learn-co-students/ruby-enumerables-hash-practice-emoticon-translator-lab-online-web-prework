require  "pry"
require "yaml"


def load_library(file)
   emoticons = YAML.load_file("./lib/emoticons.yml")
   emoticons
   new = Hash.new
   if !new.has_key?('get_meaning')
      new['get_meaning'] = {}
   # binding.pry
   end
   if !new.has_key?('get_emoticon')
     new['get_emoticon'] = {}
   end
   emoticons.each do |key,value|
     new['get_meaning'][value[1]] = key
     new['get_emoticon'][value[0]] = value[1]
     
    # binding.pry 
   end
   return new
end

def get_japanese_emoticon(file_path, emoticon)
    result_new_hash = load_library(file_path)
    result_new_hash
    
    if !result_new_hash["get_emoticon"].has_key?(emoticon)
      return "Sorry, that emoticon was not found"
    end
    #binding.pry
    result_new_hash["get_emoticon"][emoticon]
     #binding.pry
end

def get_english_meaning(file_path,emoticon)
    result_of_call = load_library(file_path)
    result_of_call
    
    if !result_of_call["get_meaning"].has_key?(emoticon)
      #binding.pry
       return "Sorry, that emoticon was not found"
    end
     result_of_call["get_meaning"][emoticon] 
    
end