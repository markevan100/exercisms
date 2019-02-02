require 'pry'
class Matrix

  attr_reader :all_rows
  def initialize(matrix)
    @all_rows = matrix.split("\n")
  end

  def rows
    this = all_rows.map { |row| row.split(" ") }
    binding.pry 
  end


end
