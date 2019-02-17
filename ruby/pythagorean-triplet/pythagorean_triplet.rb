class Triplet

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = [a, b, c]
  end

  def pythagorean?
    (a ** 2) + (b ** 2) == (c ** 2)
  end

  def self.where(constraints = {})
    min_factor = constraints.fetch(:min_factor, 1)
    max_factor = constraints.fetch(:max_factor)
    sum = constraints.fetch(:sum, nil)
  end

  def triplets
    [1, 3, 4]
  end

  def sum
    sides.inject(:+)
  end

  def product
    sides.inject(:*)
  end

  private
  attr_reader :a, :b, :c, :sides

end
