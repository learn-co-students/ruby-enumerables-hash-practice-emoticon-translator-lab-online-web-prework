# require modules here
require 'pry'
require "yaml"
require 'pp'

def load
  _library(emojo_file)
  data = YAML.load_file(emojo_file)
    
  emojo_hash = {
          'get_word' => {},
          'get_emojo' => {}
  }

  data.each do|key,value|
  emojo_hash['get_emojo'][value[0]] = data[key][1]
  emojo_hash['get_word'][value[1]] = key
    end
    emojo_hash
end
pp emojo_hash

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end