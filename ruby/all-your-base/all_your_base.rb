class BaseConverter

  def self.convert(input_base, digits, output_base)
    new_base_array = digits.map.with_index do |item, index|
      (input_base ** (index)) * item
    end
    integer = new_base_array.inject(:+)
    ans_array = []

    i = 0
    while (output_base ** i) * 2 < integer
      i += 1
    end
    ans_array[i] = 1

  end

end
