require "yaml"# require modules here



def load_library(path)
  library = YAML.load_file(path)
  hash = {get_meaning: {}, get_emoticon: {}}
  library.each do |meaning, emoticon|
    hash[:get_meaning][emoticon[1]] = meaning
    hash[:get_emoticon][emoticon[0]] = emoticon[1]
  end
  hash
end

def get_japanese_emoticon(path = './lib/emoticons.yml', smiley)
  library = load_library(path)
  if library[:get_emoticon].include?(smiley)
    library[:get_emoticon][smiley]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path = './lib/emoticons.yml', smiley)
  library = load_library(path)
  if library[:get_meaning].include?(smiley)
    library[:get_meaning][smiley]
  else
    "Sorry, that emoticon was not found"
  end
end
