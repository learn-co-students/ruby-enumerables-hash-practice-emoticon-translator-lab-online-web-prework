require 'yaml'
require 'byebug'

def load_library(file)
  emoticon = YAML.load_file(file)
  emoticon_language_library = {}
  emoticon.each do |emoticon_name, emoticon_symbol|

  	emoticon_language_library[emoticon_name] ||= {} if !emoticon_language_library[emoticon_name]
  	 emoticon_language_library[emoticon_name][:english] = emoticon_symbol[0]
  	 emoticon_language_library[emoticon_name][:japanese] = emoticon_symbol[1]
  end
  emoticon_language_library
end

def get_japanese_emoticon(file, emoticon)
	library = load_library(file)
	 library.find do |emoticon_name, emoticon_languages|
	 return emoticon_languages[:japanese] if emoticon_languages[:english] == emoticon 
	 end
	"Sorry, that emoticon was not found"
end

def get_english_meaning(file, emoticon)
	library = load_library(file)
	 library.find do |emoticon_name, emoticon_languages|
	 return emoticon_name if emoticon_languages[:japanese] == emoticon 
	 end
	"Sorry, that emoticon was not found"
end