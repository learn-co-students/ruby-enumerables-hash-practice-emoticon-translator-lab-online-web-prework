# require modules here
require "yaml"
def load_library(path)
  # code goes here
  emotes = YAML.load_file(path)

  new_hash = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }

  emotes.each do |key, value|
    new_hash['get_meaning'][value[1]] = key
    new_hash['get_emoticon'][value[0]] = emotes[key][1]
  end
  new_hash
end

def get_japanese_emoticon(path, emote)
  # code goes here
  result = load_library(path)['get_emoticon'][emote]
  result ? result : "Sorry, that emoticon was not found"
end

def get_english_meaning(path, emote)
  # code goes here
  result = load_library(path)['get_meaning'][emote]
  result ? result : "Sorry, that emoticon was not found"
end
