require "yaml"

def load_library(path)
  library = YAML.load_file( path )
  
  emitocon = {}
  meaning = {}
  
  library.each{|key, value|
    emitocon[value[0]] = value[1]
    meaning[value[1]] = key
  }
  
  hash = {"get_meaning" => meaning, "get_emoticon" => emitocon}
end

def get_japanese_emoticon(path, emoticon_to_get)
  emitocons = load_library(path)
  
  emitocons["get_emoticon"][emoticon_to_get] == nil ? "Sorry, that emoticon was not found" : emitocons["get_emoticon"][emoticon_to_get]
end

def get_english_meaning(path, japanese_emoticon)
  emitocons = load_library(path)
  
  emitocons["get_emoticon"].each{|english_meaning|
    if english_meaning[1] == japanese_emoticon
      return emitocons["get_meaning"][japanese_emoticon]
    end
    
  }
  return "Sorry, that emoticon was not found"
end