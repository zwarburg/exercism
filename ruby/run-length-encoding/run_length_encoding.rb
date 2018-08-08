class RunLengthEncoding
  def self.encode(input)
    return '' if input.empty?
    result = ''
    count = 0
    current = input[0]
    input.each_char do |char|
      if char == current
        count += 1
      else
        result += (count>1 ? "#{count}#{current}" : current)
        current = char
        count = 1
      end
    end
    result += (count>1 ? "#{count}#{current}" : current)
  end

  def self.decode(input)
    return '' if input.empty?
    result = ''
    input.scan(/([\d]*)([A-Za-z\s])/).each do |set|
      if set.first.to_i == 0
        result += set.last
      else
        result += set.last*set.first.to_i
      end
    end
    result
  end
end


module BookKeeping
  VERSION = 3
end