require "yaml"
require "pry"
# require modules here

def load_library(file_path)
  library = YAML.load_file(file_path)
  look_up_library = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  library.each do |(key, value)|
    look_up_library["get_meaning"][value[1]] = key
    look_up_library["get_emoticon"][value[0]] = value[1]
    end
look_up_library
end
  
def get_japanese_emoticon(file_path, emoticon)
  look_up_library = load_library(file_path)
  if look_up_library["get_emoticon"].has_key?(emoticon)
    return look_up_library["get_emoticon"].fetch(emoticon)
  end
"Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon)
  look_up_library = load_library(file_path)
  if look_up_library["get_meaning"].has_key?(emoticon)
    return look_up_library["get_meaning"].fetch(emoticon)
  end
"Sorry, that emoticon was not found"
end