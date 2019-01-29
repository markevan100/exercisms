class Triangle

  attr_reader :sorted
  def initialize(sides)
    @sorted = sides.sort
  end

  def equilateral?
    return false if sorted[1] + sorted[0] <= sorted[2]
    if sorted[1] == sorted[2] && sorted[0] == sorted[2]
      return true
    else
      return false
    end
  end

  def isosceles?
    return false if sorted[1] + sorted[0] <= sorted[2]
    if sorted[1] == sorted[2] || sorted[0] == sorted[1]
      return true
    else
      return false
    end
  end

  def scalene?
    return false if sorted[1] + sorted[0] <= sorted[2]
      if equilateral? != true && isosceles? != true
        return true
      else
        return false
      end
  end
end
