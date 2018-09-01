class Squares
  def initialize(val)
    @val = val
  end

  def square_of_sum
    (1..@val).sum**2
  end

  def sum_of_squares
    (1..@val).map{ |val| val**2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end