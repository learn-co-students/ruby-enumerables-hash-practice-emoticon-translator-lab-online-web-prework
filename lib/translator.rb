# require modules here
require "yaml" #must require yaml first
require 'pry'

def load_library(file) #takes in an argument of a file
 emotes_hash = YAML.load_file(file)
 new_emote_hash = {}
  emotes_hash.each do |name, emotes|
    new_emote_hash[name] = {}
     #takes the name of the emotes hash and assigns it a hash in new hash
     #name example: angel 
    new_emote_hash[name][:english] = emotes[0]
    #takes the new empty name hash and gives it a key of english
    #assigns the value as the first emote(english version)
    new_emote_hash[name][:japanese] = emotes[1]
    #takes the new empty name hash and gives it a key of english
    #assigns the value as the first emote(japanese version)
  end
  new_emote_hash
 #returns the new hash
end

def get_japanese_emoticon(file_path, emoticon_check)
  #enters the filepath and emoticon you are looking for
  library = load_library(file_path)
  # sets library as the new hash
  emoticon = library.keys.find do |key|
    #sets a variable for finding emoticon in library
    library[key][:english] == emoticon_check
    #goes through the newhash[key ex. angel][:english] and making sure it matches with the emoticon you put in
  end
  emoticon ? library[emoticon][:japanese] : "Sorry, that emoticon was not found"
end

def get_english_meaning(file, emoticon)
  library = load_library(file)
  emot_search = library.keys.find do |name|
    library[name][:japanese] == emoticon
  end
  emot_search ? emot_search : "Sorry, that emoticon was not found"
  # code goes here
end

#other examples::
# def load_library(string)
#   library=YAML.load_file(string)
#   result={}
#     library.each do |key, value|
#       result[key]={english:value[0], japanese:value[1]}
#   end
# result
# end

# def get_japanese_emoticon(string, emoticon)
# result=load_library(string)
#   emoticon=result.keys.find do |name|
#    result[name][:english]==emoticon

#   end
#   if emoticon==nil
#    "Sorry, that emoticon was not found"
#   else
#     result[emoticon][:japanese]
#   end
# end

# def get_english_meaning(string, emoticon)
# result=load_library(string)
#   emoticon=result.keys.find do |name|
#    result[name][:japanese]==emoticon

#   end
#   if emoticon==nil
#    "Sorry, that emoticon was not found"
#   else
#     emoticon
#   end
# end
