require 'pry'
class Phrase

  attr_reader :phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
     words = @phrase.split(/\b(?!\s)/)
     frequencies = Hash.new(0)
     words.each do |word|
       word.each { |w| word.split("").each_ { |l| l.delete if l !}} (/[a-zA-Z]/) === word[0]

       frequencies[word] += 1
       end
     end
     frequencies
   end

end

# def word_count
#   hash = {}
#   array = phrase.split(/\b(?!\s)/)
#   array.each { |w| w.strip! }
#   array.each { |w| w.downcase! }
#   array.each do |w|
#     n = array.count(w)
#     hash[w] = n if w.count("a-z", 0-1) != 0
#     array - [w]
#   end
#   hash
# end
