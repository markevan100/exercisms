class Robot
  attr_reader :direction, :coordinates
  def initialize
    @direction = :north
    @coordinates = [0, 0]
  end

  def orient(direction)
    orientations = [:north, :east, :south, :west]
    raise ArgumentError if orientations.include?(direction) == false
    @direction = direction
  end

  def bearing
    direction
  end

  def turn_right
    if direction == :west
      @direction = :north
    elsif direction == :north
      @direction = :east
    elsif direction == :east
      @direction = :south
    else
      @direction = :west
    end
  end

  def turn_left
    if direction == :west
      @direction = :south
    elsif direction == :north
      @direction = :west
    elsif direction == :east
      @direction = :north
    else
      @direction = :east
    end
  end

  def at(coor1, coor2)
    @coordinates[0] = coor1
    @coordinates[1] = coor2
  end

  def advance
    if direction == :west
      @coordinates[0] -= 1
    elsif direction == :north
      @coordinates[1] += 1
    elsif direction == :east
      @coordinates[0] += 1
    else
      @coordinates[1] -= 1
    end
  end
end
