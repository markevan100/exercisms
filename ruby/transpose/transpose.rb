require 'pry'
class Transpose

  def self.transpose(input)
    rows = input.split("\n")
    num = 0
    num += rows[0].length if !rows.empty?
    binding.pry
    array = []
    rows.each do |l|
      i = 0
      l.split("").each do |j|
        array[i] = j + (array[i] if array[i] != nil)
        i += 1
      end
    end
    array.join("\n")
  end
end
