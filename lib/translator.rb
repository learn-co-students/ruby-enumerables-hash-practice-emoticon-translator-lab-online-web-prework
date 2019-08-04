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
  #print feelings
  #print "\n"
  #print japanemote
  #print "\n"
  #print englicons
  
  japanemote.each { |owo| emotionary['get_meaning'][owo] = ""}
  
  print emotionary
end

load_library("lib/emoticons.yml")



def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end