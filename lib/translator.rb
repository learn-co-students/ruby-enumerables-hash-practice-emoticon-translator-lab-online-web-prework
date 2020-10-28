# require modules here
require "yaml"
require 'pry'
def load_library(string)
  library=YAML.load_file(string)
  result={}
    library.each do |key, value|
      result[key]={english:value[0], japanese:value[1]}
  end
result
end

def get_japanese_emoticon(string, emoticon)
result=load_library(string)
  emoticon=result.keys.find do |name|
   result[name][:english]==emoticon

  end
  if emoticon==nil
   "Sorry, that emoticon was not found"
  else
    result[emoticon][:japanese]
  end
end

def get_english_meaning(string, emoticon)
result=load_library(string)
  emoticon=result.keys.find do |name|
   result[name][:japanese]==emoticon

  end
  if emoticon==nil
   "Sorry, that emoticon was not found"
  else
    emoticon
  end
end
