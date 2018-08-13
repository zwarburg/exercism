class Series
  def initialize(str)
    @string = str
  end

  def slices(n)
    raise ArgumentError if n>@string.length
    @string.chars.each_cons(n).to_a.map{|slice| slice.join}
  end
end
