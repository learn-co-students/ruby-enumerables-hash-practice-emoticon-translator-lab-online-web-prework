# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  # code goes here
  get_emoticon = {}
  get_meaning = {}
  YAML.load_file(path).each do |k, v|
    get_meaning[v[1]] = k
    get_emoticon[v[0]] = v[1]
  end
  result = {}
  result["get_meaning"] = get_meaning
  result["get_emoticon"] = get_emoticon
  result
end

def get_japanese_emoticon(file_path, eng_emote)
  # emoz = YAML.load_file(file_path)
  emo_result = load_library(file_path)
  return emo_result["get_emoticon"][eng_emote] unless emo_result["get_emoticon"][eng_emote].nil?
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, jap_emote)
  emo_result = load_library(file_path) 
  return emo_result["get_meaning"][jap_emote] unless emo_result["get_meaning"][jap_emote].nil?
  return "Sorry, that emoticon was not found"
end