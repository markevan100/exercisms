class Brackets
  BRACKETS = {
    '}' => '{',
    ')' => '(',
    ']' => '['
  }

  def self.paired?(brackets)
    array = []
    brackets.split("").each do |b|
      array << b if BRACKETS.value?(b)
      if BRACKETS.key?(b) && BRACKETS[b] == array[-1]
        array.pop
      elsif BRACKETS.key?(b)
        return false
      end
    end
    array.empty?
  end
end
