class Triangle

  def initialize(sides)
    @sides = sides
  end

  def triangle?
    @sides.each do |side|
      return false if side <= 0
    end
    true
  end

  def equilateral?
    triangle? && @sides.uniq.size == 1
  end

  def isosceles?
    sides = @sides.uniq
    triangle? && sides.size == 1 || sides.size == 2
  end

  def scalene?
    triangle? && @sides.uniq.size == 3
  end

end

module BookKeeping
  VERSION = 1
end