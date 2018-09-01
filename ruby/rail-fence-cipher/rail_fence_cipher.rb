class RailFenceCipher
  def self.decode(message, rails)
    index(message, rails).sort.zip(message.chars).sort_by{|datum| datum[0][1]}.map{ |datum| datum[1]}.join
  end

  def self.encode(message, rails)
    index(message, rails).zip(message.chars).sort.map{ |datum| datum[1]}.join
  end

  def self.index(message, rails)
    pattern = (0..rails - 1).to_a + (1..rails - 2).to_a.reverse
    pattern.cycle.first(message.length).zip(0..message.length)
  end
end
