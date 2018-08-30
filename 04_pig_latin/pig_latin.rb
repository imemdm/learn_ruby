def translate str
  words = str.split

  converted = words.map do |word|
    convert(word)
  end

  converted.join(" ")

end
# quiet

def convert word
  chars = word.split("")
  vowel_index = chars.index { |el| vowel? el }
  result = []
  
  if chars[vowel_index - 1] == "q" && chars[vowel_index] == "u"
    vowel_index = chars[0..vowel_index].length + chars[vowel_index + 1...chars.length].index { |el| vowel? el }
  end

  vowels = chars[vowel_index..chars.length]
  cons = chars[0...vowel_index]
  ay = ["ay"]

  result.concat(vowels, cons, ay)

  result.join("")
end

def vowel? c
  vowels = ["a", "e", "i", "o", "u"]
  vowels.include?(c)
end