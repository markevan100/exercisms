class Phrase
  WORD_REGEX = /\b[\w']+\b/

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words.each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 }
  end

  private
  attr_reader :phrase

  def words
    phrase.downcase.scan(WORD_REGEX)
  end
end
