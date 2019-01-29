module Acronym

  def self.abbreviate(word)
  word.scan(/(\A\w|(?<=\W)\w)/).join.upcase
  end
end
