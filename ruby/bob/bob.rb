class Bob
  def self.hey(str)
    str.strip!
    return 'Fine. Be that way!' if str.empty?
    if str==str.upcase && str.match(/[A-Z]/)
      str[str.length-1]=='?' ? "Calm down, I know what I'm doing!" : 'Whoa, chill out!'
    else
      return 'Sure.' if str[str.length-1]=='?'
      'Whatever.'
    end
  end
end

module BookKeeping
  VERSION = 2
end