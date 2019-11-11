# require modules here

def load_library(the_file_path)
  {
    get_meaning: {
       "☜(⌒▽⌒)☞" => "angel",
        "(ΘεΘ;)" => "bored",
        "(￣ー￣)" => "grinning",
        "o_O" => "surprised", 
        "(^_-)" => "wink"
    },
      get_emoticon: {
        "O:)" => "☜(⌒▽⌒)☞",
        ":O" => "(ΘεΘ;)",
        "=D" => "(￣ー￣)",
        ":o" => "o_O",
        ";)" => "(^_-)",
        ":'(" => "(Ｔ▽Ｔ)",
        ":$" => "(#^.^#)"
      }
  }
 end

def get_japanese_emoticon(the_file_path, emoticon)
  load_library(file_path)
end

def get_english_meaning(the_file_path, emoticon)
  load_library(file_path)
end