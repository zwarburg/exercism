class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError if strand1.length != strand2.length
    strand1.chars.each_with_index.count { |char, index| char != strand2[index] }
  end
end

module BookKeeping
  VERSION = 3
end