# require modules here

def load_library(file_path)
  require 'yaml'
  thing = YAML.load_file(file_path)

  hash = {:get_meaning=>{}, :get_emoticon=>{}}
  thing.each { |definition,emoticon|
      hash[:get_meaning][emoticon[1]] = definition
      hash[:get_emoticon][emoticon[0]] = emoticon[1]
    }

  hash
end

def get_japanese_emoticon(file_path,emoticon)

  get_emoticons = load_library(file_path)
  japanese_emoticon = get_emoticons[:get_emoticon][emoticon]
  if(get_emoticons[:get_emoticon].key?(emoticon))
    japanese_emoticon
  else
    "Sorry, that emoticon was not found"
  end

end

def get_english_meaning(file_path,emoticon)

  get_emoticons = load_library(file_path)
  english_meaning = get_emoticons[:get_meaning][emoticon]
  if(get_emoticons[:get_meaning].key?(emoticon))
    english_meaning
  else
    "Sorry, that emoticon was not found"
  end

end
