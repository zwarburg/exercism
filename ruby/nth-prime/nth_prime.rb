class Prime
  def self.nth(val)
    raise ArgumentError if val < 1
    1.upto(Float::INFINITY).lazy.select { |x| prime?(x) }.first(val).last
  end

  def self.prime?(val)
    return false if val <= 1
    Math.sqrt(val).to_i.downto(2).each do |i|
      return false if val % i == 0
    end
    true
  end
end

module BookKeeping
  VERSION = 1
end