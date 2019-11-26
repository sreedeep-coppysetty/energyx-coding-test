class Plateau
  attr_reader :height, :width

  def initialize(height, width)
    @height = height.to_i
    @width = width.to_i
  end

  def with_in_plateau?(position)
    x_axis = position[:x_axis]
    y_axis = position[:y_axis]
    if x_axis > @width || x_axis < 0 || y_axis > @height || y_axis < 0
      return false
    end
    true
  end
end
