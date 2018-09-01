class Proverb
  def initialize(*args, qualifier: nil)
    @qualifier = qualifier
    @words = args
  end

  def verse(word, index)
    if index == @words.size-1
      "And all for the want of a #{@qualifier + ' ' if @qualifier}#{@words[0]}."
    else
      "For want of a #{word} the #{@words[index+1]} was lost."
    end
  end

  def to_s
    @words.each_with_index.map{ |word, index| verse(word, index) }.join("\n")
  end
end