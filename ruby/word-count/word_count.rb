class Phrase

  attr_reader :phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words.each_with_object({}) do |word, hash|
      word.downcase!
      hash.default = 0
      hash[word] += 1
    end
  end

  def words
    phrase.scan(/\b[\w']+\b/)
  end

end
