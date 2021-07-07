require 'yaml'

def load_library(file)
  emotes = YAML.load_file(file)
  emotes_hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  emotes.each do |emote_name, emote_style|
    emotes_hash["get_emoticon"][emote_style[0]] = emotes[emote_name][1]
    emotes_hash["get_meaning"][emote_style[1]] = emote_name
  end
  emotes_hash
end

def get_japanese_emoticon(file, emote)
  call = load_library(file)
  final = call["get_emoticon"][emote]
  if final == nil
    final = "Sorry, that emoticon was not found"
  end
  final
end

def get_english_meaning(file, emote)
  call = load_library(file)
  final = call["get_meaning"][emote]
  if final == nil
    final = "Sorry, that emoticon was not found"
  end
  final
end