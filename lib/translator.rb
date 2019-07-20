# require modules here
require "yaml"


def load_library(file)
  file = YAML.load(File.read("./lib/emoticons.yml"))
  hash = {}
   hash["get_meaning"]= {} 
   hash["get_emoticon"] = {}
  
  file.each do |key,val| 
    #p val[1]
    
      if !hash["get_meaning"][val[1]]
        hash["get_meaning"][val[1]] = key
       end
       
        if !hash["get_emoticon"][val[0]]
        hash["get_emoticon"][val[0]] = val[1]
       end
  end
           
  hash
  
end 


def get_japanese_emoticon(file,emoticons)
  hash = load_library(file)
  #p hash["get_emoticon"]
  array = []
  hash["get_emoticon"].each do |key, val|
      array.push(key)
      if key == emoticons
        return val
     
      end
   end
   
   if !array.include?(emoticons)
     return "Sorry, that emoticon was not found"
   end
  
end

def get_english_meaning(file, emoticons)
  hash = load_library(file)
 
  array = []
  hash["get_meaning"].each do |key,val|
    array.push(key)
    if key == emoticons
       return val
     
    end
  end
  
   if !array.include?(emoticons)
     return "Sorry, that emoticon was not found"
   end
end   
 