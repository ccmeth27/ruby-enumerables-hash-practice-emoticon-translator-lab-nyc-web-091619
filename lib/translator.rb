require 'pry'
require 'yaml'


def load_library(file_path)
  lib = YAML.load_file(file_path)
  result = {"get_meaning" => {}, "get_emoticon" => {}}
  lib.each do |meaning, emoticons|
    result["get_meaning"][emoticons[1]] = meaning
    result["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  result
end
load_library('./lib/emoticons.yml')

def get_japanese_emoticon(file_path = './lib/emoticons.yml', english_emoticon)
  lib = load_library(file_path)
  if lib["get_emoticon"].include?(english_emoticon)
    lib["get_emoticon"][english_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path = './lib/emoticons.yml', japanese_emoticon)
  lib = load_library(file_path)
  if lib["get_meaning"].include?(japanese_emoticon)
    lib["get_meaning"][japanese_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end