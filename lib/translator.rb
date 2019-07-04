require 'yaml' # need to require dis, mentioned in lesson
require 'pry'

def load_library(file_path) # need to add dis arg
  unformatted_hash = YAML.load_file(file_path)  # meaning is a string, emoticons is an array of two emojis

  library_hash = {'get_emoticon' => {}, 'get_meaning' => {}} # top level structure of hash, gotta do it this way

  unformatted_hash.each do |meaning, emoticons| # meaning is a string, emoticons is an array of two emojis
    english = emoticons[0]
    japanese = emoticons[1]

    library_hash['get_meaning'][japanese] = meaning # each key is japanese emoji that points to meaning
    library_hash['get_emoticon'][english] = japanese # each key is an eng. emoji that points to the japanese one

  end
  library_hash  # we want to return a hash that has the right functionality
end

def get_japanese_emoticon(file_path, emoticon) #returns japanese equivalent of english emoticon
  library = load_library(file_path) # test is looking for this to be called
  result = library['get_emoticon'][emoticon]

  result ? result : "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon) #returns the english meaning of the japanese emoticon
  library = load_library(file_path)
  result = library['get_meaning'][emoticon]

  result ? result : "Sorry, that emoticon was not found"
end
