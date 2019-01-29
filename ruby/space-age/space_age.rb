class SpaceAge

  attr_reader :seconds
  def initialize(seconds)
    @seconds = seconds
  end

  def on_earth
    (seconds / 31557600.to_f).round(2)
  end

  def on_mercury
    (seconds / (31557600.to_f * 0.2408467)).round(2)
  end

  def on_venus
    (seconds / (31557600.to_f * 0.61519726)).round(2)
  end

  def on_mars
    (seconds / (31557600.to_f * 1.8808158)).round(2)
  end

  def on_jupiter
    (seconds / (31557600.to_f * 11.862615)).round(2)
  end

  def on_saturn
    (seconds / (31557600.to_f * 29.447498)).round(2)
  end

  def on_uranus
    (seconds / (31557600.to_f * 84.016846)).round(2)
  end

  def on_neptune
    (seconds / (31557600.to_f * 164.79132)).round(2)
  end
end
