require "yaml"

def load_library(emoticon_fun)
  emoticon_fun = YAML.load_file('./lib/emoticons.yml')

  defintions = {"get_meaning" => {}, "get_emoticon" =>{}}
  emoticon_fun.each do |meaning, emoticon|
    defintions["get_meaning"][emoticon[1]] = meaning
    defintions["get_emoticon"][emoticon[0]] = emoticon[1]
  end
  defintions
end

def get_japanese_emoticon(path = './lib/emoticons.yml', english_emoticon)
  library = load_library(path)

  if library["get_emoticon"].include?(english_emoticon)
    library["get_emoticon"][english_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path = './lib/emoticons.yml', japanese_emoticon)
  library = load_library(path)

  if library["get_meaning"].include?(japanese_emoticon)
    library["get_meaning"][japanese_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end
