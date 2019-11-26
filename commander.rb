class Commander
  VALID_COMMANDS = %w[L R M]
  DIRECTIONS = { 'L': 'turn_left', 'R': 'turn_right', 'M': 'move' }

  def initialize(rover)
    @rover = rover
  end

  def handle_commands(commands)
    commands.each_char do |command|
      execute(command) if VALID_COMMANDS.include?(command)
    end
  end

  private

  def execute(command)
    @rover.send(DIRECTIONS[command.to_sym])
  end
end
