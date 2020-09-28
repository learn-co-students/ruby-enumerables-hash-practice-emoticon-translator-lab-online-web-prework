require 'pry'

def load_library(lib)
  library = YAML.load_file(lib)
  new_library = {:get_meaning => {}, :get_emoticon => {}}
  library.each do |key, value|
    new_library[:get_meaning][key] = value[1]
    new_library[:get_meaning][value[1]] = key
    new_library[:get_emoticon][value[0]] = value[1]
    # binding.pry
  end
  return new_library
end

def get_japanese_emoticon(lib , emoji)
  library = load_library(lib)
  library[:get_emoticon].each do |k, v| 
    if k == emoji
      return v
    end
  end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(lib, emoji)
  library = load_library(lib)
  library[:get_meaning].each do |k, v|
    if k == emoji
      return v
    end
  end
  return "Sorry, that emoticon was not found"
end