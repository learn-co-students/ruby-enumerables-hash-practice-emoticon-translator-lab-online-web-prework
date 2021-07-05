require "yaml"# require modules here

def load_library(file)
  file = YAML.load_file('./lib/emoticons.yml')
  new_hash = {
    'get_meaning' => {},
    'get_emoticon' => {}
}

  file.each do |key,value|
    new_hash['get_emoticon'][value[0]] = file[key][1]
    new_hash['get_meaning'][value[1]] = key
  end

  new_hash
end


def get_japanese_emoticon(file, emoticon)
  result = load_library(file)['get_emoticon'][emoticon]
  result ? result : "Sorry, that emoticon was not found"
end

def get_english_meaning(file, emoticon)
  result = load_library(file)['get_meaning'][emoticon]
  result ? result : "Sorry, that emoticon was not found"# code goes here
end
