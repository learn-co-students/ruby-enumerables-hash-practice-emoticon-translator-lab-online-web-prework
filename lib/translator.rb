require "yaml"

def load_library(string)
  lib = YAML.load_file(string)
  hash = {}
  hash[:get_meaning] = {}
  hash[:get_emoticon] = {}
  lib.each do |key, value|
    hash[:get_meaning][value[1]] = key
    hash[:get_emoticon][value[0]] = value[1]
  end
  hash
end


def get_japanese_emoticon(yaml, emo)
  ref = load_library(yaml)
  max = yaml.size
  i = 0
  while i < max
    if ref[:get_emoticon].include?(emo)
      return ref[:get_emoticon][emo]
    end
    i += 1
  end
  return "Sorry, that emoticon was not found"
end


def get_english_meaning(yaml, emo)
  ref = load_library(yaml)
  max = yaml.size
  i = 0
  while i < max
    if ref[:get_meaning].include?(emo)
      return ref[:get_meaning][emo]
    end
    i += 1
  end
  return "Sorry, that emoticon was not found"
end

#  "./lib/emoticons.yml"
