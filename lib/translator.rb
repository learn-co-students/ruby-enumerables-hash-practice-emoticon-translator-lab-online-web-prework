require "yaml"

# in get_meaning, japanese emoticons point to written meanings
# in get_emoticon, english emoticons point to japanese emoticons


def load_library(file)
  runner_speak = YAML.load_file(file)
  feelings = runner_speak.keys
  paired_emojis = runner_speak.values
  
  japanemote = []
  englicons = []
  paired_emojis.each {|pair| japanemote.push(pair[1])}
  paired_emojis.each {|pair| englicons.push(pair[0])}
  emotionary = {'get_meaning': {}, 'get_emoticon': {}}

  japanemote.length.times { |index| 
    emotionary[:get_meaning][japanemote[index]] = feelings[index]}

  englicons.length.times { |index|
    emotionary[:get_emoticon][englicons[index]] = japanemote[index]}

  emotionary
end


def get_japanese_emoticon(file, owo)
  emotionary = load_library(file)
  emotionary[:get_emoticon].keys.length.times { |index|
    if emotionary[:get_emoticon].keys[index] == owo
      return emotionary[:get_emoticon][owo]
    elsif index == emotionary[:get_emoticon].keys.length-1
      return "Sorry, that emoticon was not found"
    end
  }
end



def get_english_meaning(file, uwu)
  emotionary = load_library(file)
  emotionary[:get_meaning].keys.length.times { |index|
    if emotionary[:get_meaning].keys[index] == uwu
      return emotionary[:get_meaning][uwu]
    elsif index == emotionary[:get_meaning].keys.length-1
      return "Sorry, that emoticon was not found"
    end
  }
end