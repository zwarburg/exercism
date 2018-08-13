# class InvalidComplement < StandardError
# end
class Robot
  attr_accessor :bearing,
  def initialize()
    @bearing = nil
    @lat = nil
    @long = nil
  end

  def orient(bearing)
    raise ArgumentError unless [:east, :west, :north, :south].include?(bearing)
    @bearing = bearing
  end

  def at(lat, long)
    @lat = lat
    @long = long
  end

  def coordinates
    return [@lat, @long]
  end

  def advance
    case @bearing
    when :east; @lat += 1
    when :south; @long -= 1
    when :west; @lat -= 1
    when :north; @long += 1
    end
  end

  def turn_right
    # I feel like there must be a better way to do this...
    case @bearing
    when :east; @bearing = :south
    when :south; @bearing = :west
    when :west; @bearing = :north
    when :north; @bearing = :east
    end
  end

  def turn_left
    # I feel like there must be a better way to do this...
    case @bearing
    when :east; @bearing = :north
    when :south; @bearing = :east
    when :west; @bearing = :south
    when :north; @bearing = :west
    end
  end
end

class Simulator
  def initialize()
    @robot = nil
  end

  def place(robot, *args)
    args = args.first
    @robot = robot
    @robot.at(args[:x].to_i, args[:y].to_i)
    @robot.orient(args[:direction])
  end

  def evaluate(robot, str)
    instructions(str).each do |command|
      robot.send(command)
    end
  end

  def instructions(str)
    str.each_char.map{|char| Simulator.translate(char)}
  end

  private

  def self.translate(char)
    case char
    when 'R'; return :turn_right
    when 'L'; return :turn_left
    when 'A'; return :advance
    end
  end
end
