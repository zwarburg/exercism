class Phrase
  def initialize(str)
    @text = str
  end

  def word_count
    words = @text.split(/\'*[^\'[[:word:]]]\'*+/)
    results = Hash.new(0)
    words.each do|word|
      next if word == ''
      results[word.downcase] += 1
    end
    results
  end
end


module BookKeeping
  VERSION = 1
end