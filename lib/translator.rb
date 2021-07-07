# require modules here

def load_library
  if file.exist?(file_path)
  emoticons = YAML.load_file(file_path)
end

 def get_japanese_emoticon(file_path, emoticon)
	  library = load_library(file_path)
  if library["get_emoticon"][emoticon]
    library["get_emoticon"][emoticon]
  else
    puts "Sorry, that emoticon was not found"
  end
	

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  if library["get_meaning"][emoticon]
    library["get_meaning"][emoticon]
  else
    puts "Sorry, that emoticon was not found"
  end