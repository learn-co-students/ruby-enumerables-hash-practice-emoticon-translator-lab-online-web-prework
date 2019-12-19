# require modules here
require "yaml"
require "pry"


def load_library(path)
  # code goes here
  lib = YAML.load_file(path)
  # binding.pry
end

def get_japanese_emoticon
  # code goes here
  lib = load_library(path)
  binding.pry
end

def get_english_meaning
  # code goes here
end