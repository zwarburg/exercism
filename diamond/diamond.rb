class Diamond

  def self.make_diamond(letter)
    letters = ('A'..letter).to_a
    width = letters.size * 2 - 1

    diamond = Array.new(width) { Array.new(width, ' ') }

    midpoint = letters.size - 1

    letters.each_with_index do |letter, index|
      diamond[index][midpoint - index] = letter
      diamond[index][midpoint + index] = letter
    end

    (0..midpoint).each do |index|
      diamond[midpoint+index] = diamond[midpoint-index].clone
    end

    result = ""
    diamond.each do |row|
      result += row.join()
      result += "\n"
    end
    result
  end
end
