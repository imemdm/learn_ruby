class Book
  attr_accessor :title
  @@no_caps = ["the", "an", "a", "and", "in", "of"]

  def title=(value)
    @title = capitalize(value)
  end

  def capitalize input
    words = input.split
    caps = words.map.with_index do |word, i|
      unless i != 0 && @@no_caps.include?(word)
        word.capitalize
      else
        word
      end
    end
    caps.join(" ")
  end
end
