require_relative './plateau'
require_relative './rover'
require_relative './commander'
require_relative './east'
require_relative './north'
require_relative './south'
require_relative './west'

plateau_right_coordinates = ARGF.gets.split

until ARGF.eof
  inputs = ARGF.gets.split
  position = { x_axis: inputs[0].to_i, y_axis: inputs[1].to_i }
  cardinal_key = inputs[2]
  plateau = Plateau.new(plateau_right_coordinates[0], plateau_right_coordinates[1])
  rover = Rover.new(position, cardinal_key, plateau)
  Commander.new(rover).handle_commands(ARGF.gets)
  puts rover
end
