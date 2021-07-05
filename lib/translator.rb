{ load_library("./lib/emoticons.yml") } .to_not raise_error
end
#load_library return value return a authenticate_or_request_with_http_digest
end
#load_library return value has two keys, 'get_meaning' and 'get_emoticon'
end
#load_library return value the keys inside the 'get_meaning' hash are the Japanese emoticons 
end
#load_library return the emoticon keys inside the 'get_meaning' hash point to their meanings 
end 
#load_library return value the keys inside the 'get_emoticon' hash are the English emoticons
end
#load_library return value the emoticons keys inside the 'get_emoticon' hash point their Japanese equivalents
end
expect ( get_japanese_emoticon("./lib/emoticons.yml", ":)")} .to_not raise_error
end
#get_japanese_emoticon calls on #load_library and gives it the argument of the file path 
end
#get_japanese_emoticon returns the Japanese equivalent of and English grinning
end
#get_japanese_emoticon returns the Japanese equivalent of an English happy 
end 
#get_japanese_emoticon returns the Japanese equivalent of the English sad 
end 
#get_japanese_emoticon returns an apology message if the argument is not a known emoticon
end 
expect { get_english_meaning("./lib/emoticons.yml", "(T ▽Ｔ)") } .to_not raise_error
end
#get_english_meaning calls on #load_library and gives it the argument of the file path
end
#get_english_meaning return the English meaning of the Japanese emoticon (^ v ^)
end
#get_english_meaning returns the English meaning of the Japanese emoticon ( ー )
end
#get_english_meaning returns the English meaning of the get_japanese_emoticon( T ▽Ｔ)
end
#get_japanese_emoticon returns an apology if the argument is not a known emoticon
end 
