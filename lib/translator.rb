require "YAML"

def load_library(yaml_file_path)
  emoticons = YAML.load_file(yaml_file_path)
  dictionary = {}

  emoticons.each do |key, value|
    dictionary[key] = {}
    dictionary[key][:english] = value[0]
    dictionary[key][:japanese] = value[1]
  end

  dictionary
end

def get_japanese_emoticon(yaml_file_path, emoticon)
  library = load_library(yaml_file_path)

  matched_key = library.keys.find do |key|
    library[key][:english] == emoticon
  end

  if !!matched_key
    library[matched_key][:japanese]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(yaml_file_path, emoticon)
  library = load_library(yaml_file_path)

  matched_key = library.keys.find do |key|
    library[key][:japanese] == emoticon
  end

  if !!matched_key
    matched_key
  else
    "Sorry, that emoticon was not found"
  end
end
