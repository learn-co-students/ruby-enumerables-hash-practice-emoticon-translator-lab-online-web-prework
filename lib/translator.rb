require "yaml"
require "pp"

def load_library(path)
  library = YAML.load_file(path)
  converted_library =
  {
    :get_meaning => {},
    :get_emoticon => {}
  }
  library.each do
    |(meaning, (eng_emoticon, jap_emoticon))|
    converted_library[:get_meaning][jap_emoticon] = meaning
    converted_library[:get_emoticon][eng_emoticon] = jap_emoticon
  end
  converted_library
end

def get_japanese_emoticon(path, eng_emoticon)
  library = load_library(path)
  jap_emoticon = library[:get_emoticon][eng_emoticon]
  if jap_emoticon == nil
    jap_emoticon = 'Sorry, that emoticon was not found'
  end
  jap_emoticon
end

def get_english_meaning(path, jap_emoticon)
  library = load_library(path)
  eng_emoticon = library[:get_meaning][jap_emoticon]
  if eng_emoticon == nil
    eng_emoticon = 'Sorry, that emoticon was not found'
  end
  eng_emoticon
end