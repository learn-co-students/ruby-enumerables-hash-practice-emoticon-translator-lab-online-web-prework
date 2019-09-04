# require modules here
require "yaml"

def load_library(file)
  # code goes here
  new_hash = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  library =  YAML.load_file(file)
  library.each_pair { |meaning, emoticons|

    new_hash[:get_meaning][emoticons[1]] = meaning
    new_hash[:get_emoticon].merge!(emoticons[0] => emoticons[1])
   }

  new_hash
end

def get_japanese_emoticon(file, emoticon)
  # code goes here
  library = load_library(file)
  if library[:get_emoticon].key?(emoticon)
    return library[:get_emoticon][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end

end

def get_english_meaning(file, emoticon)
  # code goes here
  library = load_library(file)
  if library[:get_meaning].key?(emoticon)
    return library[:get_meaning][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end

end

get_english_meaning("./lib/emoticons.yml", "Ｔ▽Ｔ")
