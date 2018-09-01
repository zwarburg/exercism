class Change
  def self.generate(coins, value)
    result = []
    coins.reverse.each do |coin|
      puts "c: #{coin}, v: #{value}"
      break if value == 0
      next if coin > value

      result.concat([coin]*(value / coin))
      value = (value % coin)
    end
    return -1 unless value == 0
    result.reverse
  end
end

module BookKeeping
  VERSION = 2
end