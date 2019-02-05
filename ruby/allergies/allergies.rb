class Allergies

  attr_reader :num
  def initialize(num)
    @num = num
  end

  i = 0
  i += 1 while 2 ** i < num 

  def allergic_to?(food)
    if food == 'eggs' && num = 1
      return true
    end
  end

end
