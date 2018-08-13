class CollatzConjecture
  def self.steps(n)
    raise ArgumentError if n<1
    if n == 1
      0
    elsif n%2==0
      1 + steps(n/2)
    else
      1 + steps(n*3 + 1)
    end
  end
end

module BookKeeping
  VERSION = 1
end