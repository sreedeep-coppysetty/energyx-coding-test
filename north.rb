class North
  def turn_left
    West.new
  end

  def turn_right
    East.new
  end

  def move(position)
    x_axis = position[:x_axis]
    y_axis = position[:y_axis] + 1
    { x_axis: x_axis, y_axis: y_axis }
  end

  def to_s
    'N'
  end
end
