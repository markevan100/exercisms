
require 'pry'
class Matrix


  def initialize(matrix)
    @matrix = matrix
  end

  def rows
    array = matrix.split(/\n/)
    array.map do |row|
      num = row.split(" ")
      num.map { |n| n.to_i }
    end
  end

  def columns
    columns_array = [[], [], []]
    num = rows[0].count
    rows.each do |row|
      i = 0
      while i < num
      columns_array[i] << row[i]
      i += 1
      end
    end
    columns_array
  end

  def saddle_points

    rows.each do |row|
      num = row.max_by { |x| x }
      index = row.index(num)
      columns[index].min
    end



  end



  private
  attr_reader :matrix

end
