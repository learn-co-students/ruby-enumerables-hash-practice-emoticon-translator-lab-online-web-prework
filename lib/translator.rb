require 'yaml'
require "pry"

def load_library(filename)
  data = YAML.load_file(filename)
  
  #Emoticon - japanese emoticon points to english emoticon
  #Meaning - japanese emoticon points to english meaning
  
  library = {
    "get_emoticon" => {},
    "get_meaning" => {}
  }
  
  #item[0] = english meaning
  #item[1][0] = english emoticon
  #item[1][1] = japanese emoticon
  data.map{ |item|
    library["get_emoticon"][item[1][0]] = item[1][1]
    library["get_meaning"][item[1][1]] = item[0]
  }
  
  return library
end

def get_japanese_emoticon(filename, emoticon)
  data = load_library(filename)
  message = ""
  
  if data["get_emoticon"][emoticon]
    message = data["get_emoticon"][emoticon]
  else
    message = "Sorry, that emoticon was not found"
  end
  
  return message
  
end

def get_english_meaning(filename, emoticon)
  data = load_library(filename)
  message = ""
  
  if data["get_meaning"][emoticon]
    message = data["get_meaning"][emoticon]
  else
    message = "Sorry, that emoticon was not found"
  end
  
  return message
  
end

#load_library("./lib/emoticons.yml")
