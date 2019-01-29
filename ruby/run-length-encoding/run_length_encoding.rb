require 'pry'
class RunLengthEncoding

  def self.encode(input)
    array = input.split("")
    str = ""
    until array.count == 0
      new_array = array.take_while { |l| l == array[0] }
      count = new_array.count
      str << count.to_s if count > 1
      str << new_array[0]
      index = count - 1
      array.slice!(0..index)
    end
    str
  end

  def self.decode(input)
    array = input.split("")
    str = ""
    until array.count == 0
      if array[0].to_i == 0
        str << array[0]
        array.slice!(0)
      else
        new_array = array.take_while { |l| l.to_i != 0 }
        num = new_array.join
        delete = num.length - 1
        number = num.to_i
        array.slice!(0..delete)
        number.times do str << array[0].to_s
        end
        array.slice!(0)
      end
    end
    str
  end
end
