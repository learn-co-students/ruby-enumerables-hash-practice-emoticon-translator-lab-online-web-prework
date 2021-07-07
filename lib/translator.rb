
require "yaml"

def load_library(file)
  emoticons_library = YAML.load_file(file)
  emoticon_hash = {:get_meaning => {}, :get_emoticon => {}}
  emoticons_library.each do |key, value|
    emoticon_hash[:get_meaning][value[1]] = key
    emoticon_hash[:get_emoticon][value[0]] = value[1]
  end
  emoticon_hash
end

def get_japanese_emoticon(file, emoticon)
  emoticon_hash = load_library(file)
  sorry_message = "Sorry, that emoticon was not found"
  emoticon_hash[:get_emoticon].each do |e_key, j_value|
    if e_key == emoticon
      return j_value
    end
  end
  sorry_message
end

def get_english_meaning(file, emoticon)
  emoticon_hash = load_library(file)
  sorry_message = "Sorry, that emoticon was not found"
  emoticon_hash[:get_meaning].each do |j_key, meaning|
    if j_key == emoticon
      return meaning
    end
  end
  sorry_message
end