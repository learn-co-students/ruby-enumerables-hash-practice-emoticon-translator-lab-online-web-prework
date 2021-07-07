require "yaml"

def load_library(file_path)
  library = {}
  library = { "get_meaning" => {}, "get_emoticon" => {}}
  emoticons = YAML.load_file(file_path)
  library.each do |library_function, library_hash|
    emoticons.each do |emoticons_meaning, emoticons_array|
      if library_function == "get_meaning"
        library["get_meaning"]["#{emoticons_array[1]}"] = emoticons_meaning
      else library_function == "get_emoticon"
        library["get_emoticon"]["#{emoticons_array[0]}"] = emoticons_array[1]
      end
    end
  end
  library
end

def get_japanese_emoticon(file_path, english_emoticon)
  library = load_library(file_path)
  if library["get_emoticon"].has_key?(english_emoticon)
    japanese_emoticon = library["get_emoticon"][english_emoticon]
    japanese_emoticon
  else
    p "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, japanese_emoticon)
  library = load_library(file_path)
  if library["get_meaning"].has_key?(japanese_emoticon)
    meaning = library["get_meaning"][japanese_emoticon]
    meaning
  else
    p "Sorry, that emoticon was not found"
  end
end
