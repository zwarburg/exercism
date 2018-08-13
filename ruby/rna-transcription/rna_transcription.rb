class InvalidComplement < StandardError
end
class Complement
  def self.of_dna(str)
    begin
      str.each_char.map { |char| translate(char) }.join
    rescue InvalidComplement
      return ''
    end
  end

  private

  def self.translate(char)
    case char
    when 'G'; return 'C'
    when 'C'; return 'G'
    when 'T'; return 'A'
    when 'A'; return 'U'
    else raise InvalidComplement
    end
  end
end

module BookKeeping
  VERSION = 4
end