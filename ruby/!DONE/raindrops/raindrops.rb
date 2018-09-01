class Raindrops
  def self.convert(val)
    result = ''
    result += 'Pling' if val%3==0
    result += 'Plang' if val%5==0
    result += 'Plong' if val%7==0
    result = val.to_s if result.empty?
    result
  end
end

module BookKeeping
  VERSION = 3
end