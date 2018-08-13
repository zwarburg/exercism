class Acronym
  def self.abbreviate(str)
    str.split(/[\s\-]/).map{ |word| word[0] }.join.upcase
  end
end

module BookKeeping
  VERSION = 4
end