require "yaml"


def load_library(lib)
  emoticons = YAML.load_file(lib)
  
  hash = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }
  # Creates an empty nested hash.
  
  emoticons.each do |meaning, emoji|
  # Iterate through loaded emoticons.
  
    hash['get_meaning'][emoji[1]] = meaning
    # Creating a hash key INSIDE get_meaning called japanese (of japanese emoticons) and sets it to the meanings of the emojis.
    # So when the desired japanese emoji is passed into [emoji[1]] when the method is called, it returns the meaning.
     
    hash['get_emoticon'][emoji[0]] = emoticons[meaning][1]
    # Creating a key INSIDE get_emoticon called westernized and set it to the japanese versions of the emojis.
    # So when the desired westernized emoji is passed into [emoji[0]] when the method is called, it returns the japanese emoji.
    
  end
return hash
# Returns the final, populated hash. load_library basically IS a hash now.

end


def get_japanese_emoticon(file, emoticon)
  xx = load_library(file)['get_emoticon'][emoticon] 
  # Looks in the hash inside load_library and passes in emoticon to locate the japanese emoticon
  
  xx ? xx : "Sorry, that emoticon was not found"
end

def get_english_meaning(file, emoticon)
  xx = load_library(file)['get_meaning'][emoticon]
  # Looks in the hash inside load_library and passes in emoticon to locate the meaning
  
  xx ? xx : "Sorry, that emoticon was not found"
end



=begin
# Simplified version by Matteo and I.

def load_library(lib)
  emoticons = YAML.load_file(lib)
  
  hash = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }
  # Creates an empty nested hash.
  
  emoticons.each do |meaning, emoji|
    # Iterate through loaded emoticons.
    
    westernized_emoji = emoji[0]
    japanese_emoji = emoji[1]
    # Set the variables to the relevant values.
    
    hash['get_meaning'][japanese] = meaning
    # Creating a hash key INSIDE get_meaning called japanese (of japanese emoticons) and sets it to the meanings of the emojis.
    # So when the desired japanese emoji is passed into [emoji[1]] when the method is called, it returns the meaning.
    
    hash['get_emoticon'][westernized] = japanese
    # Creating a key INSIDE get_emoticon called westernized and set it to the japanese versions of the emojis.
    # So when the desired westernized emoji is passed into [emoji[0]] when the method is called, it returns the japanese emoji.
    
  end
return hash
# Returns the final, populated hash. load_library basically IS a hash now.

end
=end