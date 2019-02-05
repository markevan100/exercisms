require 'pry'

class WordProblem
  attr_reader :problem
  attr_accessor :sum
  def initialize(problem)
    @problem = problem
    @sum = 0
  end

  def answer
    prob = problem.gsub("by ", "")
    length = prob.length - 9

    no_what = prob.slice(8, length)
    array = no_what.split(" ")
    method(array)

    if array.length > 3
      array.shift
      array.shift
      array[0] = sum
      method(array)
    end
    sum
  end

  def method(array)
    if array[1] == "plus"
      @sum = array[0].to_i + array[2].to_i
    elsif array[1] == "minus"
      @sum = array[0].to_i - array[2].to_i
    elsif array[1] == "multiplied"
      @sum = array[0].to_i * array[2].to_i
    elsif array[1] == "divided"
      @sum = array[0].to_i / array[2].to_i
    else
      raise ArgumentError
    end
  end

  # def new_array
  #
  # end

end
