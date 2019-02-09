class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words.each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 }
  end

  private
  attr_reader :phrase

  def words
    separate_words = /\b[\w']+\b/
    phrase.downcase.scan(separate_words)
  end
end
