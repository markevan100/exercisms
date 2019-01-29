
module Isogram

  def self.isogram?(phrase)
    letters = phrase.downcase.scan(/[a-z]/)
    letters == letters.uniq
  end
end
