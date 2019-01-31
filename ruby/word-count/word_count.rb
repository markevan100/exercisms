class Phrase

  attr_reader :phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words = @phrase.scan(/(?!'.*')\b[\w']+\b/)
    frequencies = Hash.new(0)
    words.each do |word|
      word.downcase!
      if frequencies[word]
        frequencies[word] += 1
      else
        frequencies[word] = 1
      end
    end
    frequencies
  end
end
