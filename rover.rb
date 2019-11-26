class Rover
  def initialize(position, cardinal_key, plateau)
    @position = position
    @cardinal_key = cardinal_key
    @cardinal = cardinal
    @plateau = plateau
  end

  def turn_left
    @cardinal = @cardinal.turn_left
  end

  def turn_right
    @cardinal = @cardinal.turn_right
  end

  def move
    position = @cardinal.move(@position)
    return unless @plateau.with_in_plateau?(position)
    @position = position
  end

  def to_s
    "#{@position[:x_axis]} #{@position[:y_axis]} #{@cardinal}"
  end

  private

  def cardinal
    case @cardinal_key
    when 'N'
      North.new
    when 'E'
      East.new
    when 'W'
      West.new
    when 'S'
      South.new
    end
  end
end
