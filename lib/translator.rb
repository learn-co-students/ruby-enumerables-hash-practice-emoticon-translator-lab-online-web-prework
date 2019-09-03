require "yaml"
require 'pry' # require modules here

def load_library(file)
 library = YAML.load_file('./lib/emoticons.yml')
 result = {"get_meaning" => {}, "get_emoticon" => {}}
# binding.pry
library.each do |meaning, emoticons|
  result["get_meaning"][emoticons[1]] = meaning
  result["get_emoticon"][emoticons[0]] = emoticons[1]
    end
result
end

def get_japanese_emoticon(yaml='.lib/emoticons.yml', english_emoticon)
  library = load_library(yaml)
  if library["get_emoticon"].include?(english_emoticon)
    library["get_emoticon"][english_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(yaml='.lib/emoticons.yml', japanese_emoticon)
  library = load_library(yaml)
  if library["get_meaning"].include?(japanese_emoticon)
    library["get_meaning"][japanese_emoticon]
  else
    "Sorry, that emoticon was not found"
  end

end