class TwoFer
  def self.two_fer(who = nil)
    "One for #{who||'you'}, one for me."
  end
end

module BookKeeping
  VERSION = 1
end