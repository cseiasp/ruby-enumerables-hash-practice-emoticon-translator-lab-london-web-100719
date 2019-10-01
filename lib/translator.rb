

def load_library(path)
  require "yaml"
  new_hash = YAML.load_file(path)
    emoticon = { "get_meaning": {}, "get_emoticon": {} }
    
    new_hash.each do |meaning,emoticons|
      
        emoticon[:get_meaning][emoticons[1]] = meaning
        emoticon[:get_emoticon][meaning] = emoticons
        
      
    end
    
    emoticon
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end