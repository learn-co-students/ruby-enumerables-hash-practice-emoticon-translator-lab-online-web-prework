require "yaml"
#require "pry"

def load_library(file)
  emoticons = YAML.load_file('./lib/emoticons.yml')
    translator_hash = {:get_meaning => {}, :get_emoticon => {}}
    emoticons.each do |meaning, array|
           translator_hash[:get_meaning][array[1]] = meaning
           translator_hash[:get_emoticon][array[0]] = array[1]
        end
    translator_hash
  end


def get_japanese_emoticon (file, emoticon)
  translator_hash = load_library('./lib/emoticons.yml')
  translator_hash[:get_emoticon].each do |hash|
  if hash[0] == emoticon
    return hash[1]
  else
     return "Sorry that emoticon was not found"
   end
end
end




def get_english_meaning
end
