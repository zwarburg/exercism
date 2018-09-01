class Anagram
  def initialize(str)
    @base = str.downcase
  end

  def match(queries)
    anagrams = @base.chars.permutation.to_a.map{|perm| perm.join}
    queries.select{ |query| query.downcase != @base && anagrams.include?(query.downcase) }
  end
end

