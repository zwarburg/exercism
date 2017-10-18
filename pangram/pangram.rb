class Pangram

  def self.pangram?(phrase)
    phrase.downcase!
    ('a'..'z').each do |letter|
      return false unless phrase.include?(letter)
    end
    return true
  end

end