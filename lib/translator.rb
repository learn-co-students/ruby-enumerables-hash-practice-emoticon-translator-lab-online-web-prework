# require modules here
require "yaml"
require "pry"

def load_library(sourcefile)
  loadedfile = YAML.load_file sourcefile
  # Key = meaning | value = array | arary[0] = english && array[1] = Japanees

  emos = {}

  emos[:get_meaning] = {}
  emos[:get_emoticon] = {}

  loadedfile.each() { |key, value| emos[:get_meaning][value[1]] = key }
  loadedfile.each() { |key, value| emos[:get_emoticon][value[0]] = value[1] }

  emos
end

def get_japanese_emoticon(file,emoticon)

  data_loaded = load_library(file)
  message = ""
  return_value = data_loaded[:get_emoticon].fetch(emoticon, "Sorry, that emoticon was not found")# {|key| key == emoticon }
#binding.pry
  # if return_value == nil
  #   message = "I am sory"
  # else
  #   message = return_value
  # end

end

def get_english_meaning
  # code goes here
end
