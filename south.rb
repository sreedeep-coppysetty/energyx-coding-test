class South
  def turn_left
    East.new
  end

  def turn_right
    West.new
  end

  def move(position)
    x_axis = position[:x_axis]
    y_axis = position[:y_axis] - 1
    { x_axis: x_axis, y_axis: y_axis }
  end

  def to_s
    'S'
  end
end
