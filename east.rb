class East
  def turn_left
    North.new
  end

  def turn_right
    South.new
  end

  def move(position)
    x_axis = position[:x_axis] + 1
    y_axis = position[:y_axis]
    { x_axis: x_axis, y_axis: y_axis }
  end

  def to_s
    'E'
  end
end
