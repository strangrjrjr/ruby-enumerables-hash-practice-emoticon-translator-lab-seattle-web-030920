# require modules here
require "yaml"
require "pry"
def load_library(path = "./emoticons.yml")
  # code goes here
  source = YAML.load_file(path)
  result = { :get_emoticon => {}, :get_meaning => {}}
  #get_emoticon = {english emoticon => japanese emoji, get_meaning = { japanese emoji => english word
<<<<<<< HEAD
  #binding.pry
=======
  binding.pry
>>>>>>> 917cb76e86109f42d88697dda31e4f45273fdf85
  source.each { |emoticons|
    #puts "DEFINITION"
    word = emoticons[0]
    #pp word
    #puts "ENGLISH EMOTICON"
    eng = emoticons[1][0]
    #pp eng
    #puts "JAPANESE EMOJI"
    jap = emoticons[1][1]
    #pp jap
    result[:get_emoticon][eng] = jap
    result[:get_meaning][jap] = word
  }
<<<<<<< HEAD
  #pp result
=======
  pp result
>>>>>>> 917cb76e86109f42d88697dda31e4f45273fdf85
  result
end

def get_japanese_emoticon(file_path, emoji)
  # code goes here
  source = load_library(file_path)
<<<<<<< HEAD
  source[:get_emoticon].each { |emoticon|
    if emoticon[0] == emoji
      #pp emoticon.fetch(emoji)
      return emoticon[1]
    end
  }
=======
  
>>>>>>> 917cb76e86109f42d88697dda31e4f45273fdf85
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoji)
  # code goes here
  source = load_library(file_path)
<<<<<<< HEAD
  source[:get_meaning].each { |emoticon|
    if emoticon[0] == emoji
      return emoticon[1]
=======
  source.each { |definition, symbol|
    if symbol[1] == emoji
      return definition
>>>>>>> 917cb76e86109f42d88697dda31e4f45273fdf85
    end
  }
  return "Sorry, that emoticon was not found"
end