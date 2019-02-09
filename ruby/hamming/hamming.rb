class Hamming

  def self.compute(original, mutation)
    raise ArgumentError if original.length != mutation.length
    counter = 0
    array = original.split("")
    array.each_index { |i| counter += 1 if original[i] != mutation[i] }
    counter
  end
end
