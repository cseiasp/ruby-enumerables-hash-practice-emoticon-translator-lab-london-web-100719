

def load_library(path)
  
  require "yaml"
  new_hash = YAML.load_file(path)
  
  emoticon = { "get_meaning": {}, "get_emoticon": {} }
    
    new_hash.each do |meaning,emoticons|
      emoticon[:get_meaning][emoticons[1]] = meaning
      emoticon[:get_emoticon][emoticons[0]] = emoticons[1]
    end
    emoticon
end

def get_japanese_emoticon(path, emoticon_symbol)
  
load_library(path)

#emoticon[:get_emoticon][emoticon_symbol]

end

def get_english_meaning
  # code goes here
end