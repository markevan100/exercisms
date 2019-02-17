class SumOfMultiples

  def initialize(*mults)
    @mults = mults
  end

  def to(n)
    [*0...n].select { |num| num == 0 || mults.any? { |arg| num % arg == 0 } }.uniq.inject(:+)
  end

  private
  attr_reader :mults
end
