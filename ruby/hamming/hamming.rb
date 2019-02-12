class Hamming

  def self.compute(original, mutation)
    raise ArgumentError if original.length != mutation.length
    array = original.split("")
    array.each.with_index.count { |x, i| x != mutation[i] }
  end
end
