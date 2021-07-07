# require modules here

def load_library{"./lib/emoticons.yml"
}
end

def get_japanese_emoticon
  require "yaml"
  japanese_emoticon= YAML.load_file
end

def get_english_meaning
  require "yaml"
  english_meaning = YAML.load_file
end