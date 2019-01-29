class Series

  attr_reader :str, :array
  def initialize(str)
    @str = str
  end

  def slices(int)
    raise ArgumentError if @str.length < int
    array = []
    h = @str.dup
    x = (h.length + 1) - int
    g = int - 1
    x.times do
      y = h.byteslice(0..g)
      array << y
      h[0] = ""
    end
    array
  end
end
