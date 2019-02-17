class Squares
  
  def initialize(n)
    @n = [*1..n]
  end

  def square_of_sum
    n.inject(:+) ** 2
  end

  def sum_of_squares
    n.map { |l| l ** 2}.inject(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private
  attr_reader :n

end
