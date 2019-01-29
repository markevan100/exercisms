class RailFenceCipher

  def self.encode(input, rails)
    array = []
    clean_input = input.gsub(/\s+/, "")
    



  end



end

array = []
clean_input = input.gsub(/\s+/, "")
chars = clean_input.length
index = 0
until index >= chars
input.each_char do |m|
  array[index] = m
  index += rails
