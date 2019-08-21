# require modules here
require("yaml");

def load_library(library_location)
  emoticons = YAML.load_file(library_location);

  loaded_emoticon_library_hash =
  {
    "get_meaning" => {},
    "get_emoticon" => {}
  }

  emoticons.each do |symbol, emoticon_values|

    loaded_emoticon_library_hash["get_meaning"][emoticon_values[1]] = symbol;

    loaded_emoticon_library_hash["get_emoticon"][emoticon_values[0]] = emoticons[symbol][1];

  end;

  return(loaded_emoticon_library_hash);
end

def get_japanese_emoticon(library_location, western_emoticon)
  japanese_emoticon_translation = load_library(library_location)['get_emoticon'][western_emoticon];
  return(japanese_emoticon_translation ? japanese_emoticon_translation : "Sorry, that emoticon was not found");
end

def get_english_meaning(library_location, asian_emoticon)
  americian_emoticon_translation = load_library(library_location)['get_meaning'][asian_emoticon];
  return(americian_emoticon_translation ? americian_emoticon_translation : "Sorry, that emoticon was not found");
end
