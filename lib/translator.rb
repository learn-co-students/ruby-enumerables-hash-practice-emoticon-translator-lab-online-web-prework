require 'yaml'


def load_library(file)
  emotes = YAML.load_file(file)
  mean_hash = {}
  emo_hash = {}
  x = 0
  emotes.values.each do |group|
    america = group[0]
    japan = group[1]
    mean_hash[japan] = emotes.keys[x]
    emo_hash[america] = japan
    x += 1
  end
  [[:get_meaning, mean_hash], [:get_emoticon, emo_hash]].to_h
end

def get_japanese_emoticon(file, emote)
  hash = load_library(file)
  if !!hash[:get_emoticon][emote] == true
    hash[:get_emoticon][emote]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file, emote)
  hash = load_library(file)
  if !!hash[:get_meaning][emote] == true
    hash[:get_meaning][emote]
  else
    "Sorry, that emoticon was not found"
  end
end
