
require "yaml" 

def load_library(yml_file) #passing emoticons.yml as parameter. yml_file could be written as anything x, y, etc.
emoticons = YAML.load_file(yml_file) #setting the var that i created 'emoticons' to = the loaded emoticons.yml

    new_hash = { #load_library returns a hash which i have named new_hash
      #creating two keys to pass tests ('get_meaning' and 'get_emoticon') that point to inner hashes using =>
      'get_meaning' => {}, #japanese emoticons  "☜(⌒▽⌒)☞"
      'get_emoticon' => {} #english emoticons "O:)"
    }


#angel: KEY
#  - "O:)"      VALUE[0]
#  - "☜(⌒▽⌒)☞"  VALUE[1]
  emoticons.each do |key,value| #iterate through emoticons with .each to access key value pairs
    english = value[0]
    japanese = value[1]
    new_hash["get_emoticon"][english] = japanese #the emoticon keys inside the 'get_emoticon' hash point to their Japanese equivalents
    new_hash["get_meaning"][japanese] = key #the emoticon keys inside the 'get_meaning' hash point to their meanings..."☜(⌒▽⌒)☞" is = to angel

  end

new_hash  #returning created hash
end

def get_japanese_emoticon(yml_file, emoticon) #accepts two arguments, the YAML file path and the emoticon
  japanese_emoticon = load_library(yml_file)['get_emoticon'][emoticon] #calls on #load_library and gives it the argument of the file path
    if japanese_emoticon #if japanese_emoticon is found or "thruthy"
      return japanese_emoticon #return it
    else #if japanese_emoticon is not found or "falsy"
      return "Sorry, that emoticon was not found" #return this string: sorry_message found in translator_spec.rb
    end

end

def get_english_meaning(yml_file, emoticon) #accepts two arguments, the YAML file path and the emoticon
  english_meaning = load_library(yml_file)['get_meaning'][emoticon] #calls on #load_library and gives it the argument of the file path
    if english_meaning #if english_meaning is found or "thruthy"
      return english_meaning #return it
    else #if english_meaning is not found or "falsy"
      return "Sorry, that emoticon was not found" #return this string: sorry_message found in translator_spec.rb

    end
end
