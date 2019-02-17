class Anagram

  def initialize(word)
    @word = word
  end

  def match(match)
    word_case = word.downcase.split("")
    match.select do |check|
      check_case = check.downcase.split("")
      check_case.sort ==  word_case.sort && word_case != check_case
    end
  end

  private
  attr_reader :word
end
