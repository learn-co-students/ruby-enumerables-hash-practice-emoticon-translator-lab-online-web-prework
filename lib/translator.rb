# require modules here

def load_library(the_file_path)
  {
    get_meaning: {
       "☜(⌒▽⌒)☞" => "angel",
        "(ΘεΘ;)" => "bored",
        "(￣ー￣)" => "grinning",
        "o_O" => "surprised", 
        "(^_-)" => "wink",
        "(Ｔ▽Ｔ)" => "sad",
        "(＾ｖ＾)" => "happy"
        
    },
      get_emoticon: {
        "O:)" => "☜(⌒▽⌒)☞",
        ":O" => "(ΘεΘ;)",
        "=D" => "(￣ー￣)",
        ":o" => "o_O",
        ";)" => "(^_-)",
        ":'(" => "(Ｔ▽Ｔ)",
        ":$" => "(#^.^#)",
        ":)" => "(＾ｖ＾)"
      }
   
  }
 end

def get_japanese_emoticon(the_file_path, emoticon)
  load_library(the_file_path)
   hash = load_library(the_file_path)
  if hash[:get_emoticon][emoticon]
    hash[:get_emoticon][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(the_file_path, emoticon)
  hash = load_library(the_file_path)
  if hash[:get_meaning][emoticon]
    hash[:get_meaning][emoticon]
  else 
    "Sorry, that emoticon was not found"
  end
end 
learn