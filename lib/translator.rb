require "yaml"

def load_library file
  YAML.load_file file
end

def get_japanese_emoticon(path, western)
  load_library(path)['get_emoticon'][western] or "Sorry, that emoticon was not found"
end

def get_english_meaning path, japanese
  load_library(path)['get_meaning'][japanese] or "Sorry, that emoticon was not found"
end
