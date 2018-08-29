def echo word
  word
end

def shout word
  word.upcase
end

def repeat word, n = 2
  str = "#{word} " * n
  str.strip
end

def start_of_word word, n
  word[0...n]
end

def first_word input
  words = input.split
  words[0]
end

def titleize input
  words = input.split
  caps = words.map.with_index do |word, i|
    unless i != 0 && (word == "and" || word == "the" || word == "over")
      word.capitalize
    else
      word
    end
  end
  caps.join(" ")
end