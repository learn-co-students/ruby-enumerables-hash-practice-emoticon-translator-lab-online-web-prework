require 'pry'
require 'yaml'
YAML.load_file("./lib/emoticons.yml")

def load_library(emo_path)
  emo_path = YAML.load_file("./lib/emoticons.yml")
  emo_lib = { "get_meaning" => {},
              "get_emoticon" => {}
  }
  emo_path.each do |key, value|
    english = value[0]
    japanese = value[1]
    emo_lib["get_meaning"][japanese] = key
    emo_lib["get_emoticon"][english] = japanese
    #binding.pry
  end
  return emo_lib
end

def get_japanese_emoticon(emo_path, emo_lib)
  new_path = load_library(emo_path)
  japanese_emo = new_path["get_emoticon"][emo_lib]
  japanese_emo ? japanese_emo : "Sorry, that emoticon was not found"
end 


def get_english_meaning(emo_path, emo_lib)
  new_path = load_library(emo_path)
  english_emo = new_path["get_meaning"][emo_lib]
  english_emo ? english_emo : "Sorry, that emoticon was not found"
end

