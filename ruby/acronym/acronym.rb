class Acronym
  def self.abbreviate(str)
    str.scan(/(\w)\w+/).join.upcase
  end
end

module BookKeeping
  VERSION = 4
end