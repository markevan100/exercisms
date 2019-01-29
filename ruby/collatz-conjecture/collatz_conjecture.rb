module CollatzConjecture

  def self.steps(num)
    raise ArgumentError if num < 1
    counter = 0
    loop do
      break if num == 1
      counter += 1
      if num % 2 == 0
        num = num / 2
      else
        num = (3 * num) + 1
      end
    end
    counter
  end
end
