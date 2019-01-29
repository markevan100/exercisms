class Pangram

  def self.pangram?(sentence)
    return false if sentence.empty? == true
    sent1 = sentence.downcase
    sent1.gsub!(/[^a-z]/, "")
    sent2 = sent1.chars.sort.join.squeeze
    return sent2 == "abcdefghijklmnopqrstuvwxyz"
  end

end
