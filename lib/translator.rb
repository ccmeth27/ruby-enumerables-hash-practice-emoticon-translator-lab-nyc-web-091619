require 'pry'
require 'yaml'


def load_library(file_path)
  get_emoticon = YAML.load_file(file_path)
  result = {"get_meaning" => {}, "get_emoticon" => {}}
  get_emoticon.each do |meaning, emoticons|
    result["get_meaning"][emoticons[1]] = meaning
    result["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  result
end
load_library('./lib/emoticons.yml')

def get_japanese_emoticon(file_path, english_emoticon)
  get_emoticon = load_library(file_path)
end

def get_english_meaning(file_path, japanese_emoticon)
  # code goes here
end