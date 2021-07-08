# require modules here
require "yaml"

def load_library(file = 'lib/emoticons.yml')
  # code goes here
  emo_library = {"get_meaning" => {}, "get_emoticon" => {}}
  emos = YAML.load_file(file)
  emos.each do |meaning, array|
    emo_library["get_meaning"][array[1]] = meaning
    emo_library["get_emoticon"][array[0]] = array[1]
  end
  emo_library
end

def get_japanese_emoticon(file = 'lib/emoticons.yml', emoticon)
  # code goes here
  jap_emo = load_library(file)
  if jap_emo["get_emoticon"].include?(emoticon)
    jap_emo["get_emoticon"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file = 'lib/emoticons.yml', emoticon)
  # code goes here
  west_emo = load_library(file)
  if west_emo["get_meaning"].include?(emoticon)
    west_emo["get_meaning"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

load_library