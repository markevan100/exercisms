class Matrix

  attr_reader :string
  def initialize(string)
    @string = string
  end

  def rows
    array = []
    string.split("\n").each do |s|
      blankarray = []
      s.split(" ").each do |s|
        blankarray << s.to_i
      end
      array << blankarray
    end
    array
  end

  def columns
    array = []
    arr2 = string.split("\n").map do |s|
      s.split(" ")
    end

    until arr2[0].length == 0
      blankarray = []
      arr2.each do |a|
        blankarray << a.shift.to_i
      end
      array << blankarray
    end
    array
  end
end
