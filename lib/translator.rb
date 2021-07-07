require "yaml"

def load_library(file_path)
  emote_library = YAML.load_file(file_path)
  result = {"get_meaning" => {}, "get_emoticon" => {}}
  emote_library.each do |meaning, emoticon|
    result["get_meaning"][emoticon[1]] = meaning
    result["get_emoticon"][emoticon[0]] = emoticon[1]
  end
return result
end

def get_japanese_emoticon(file_path = './lib/emoticons.yml', english_emoticon)
  emote_library = load_library(file_path)
  if emote_library["get_emoticon"].include?(english_emoticon)
    emote_library["get_emoticon"][english_emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path = './lib/emoticons.yml', japanese_emoticon)
  emote_library = load_library(file_path)
  if emote_library["get_meaning"].include?(japanese_emoticon)
    emote_library["get_meaning"][japanese_emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end