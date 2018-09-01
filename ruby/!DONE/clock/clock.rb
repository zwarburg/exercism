class Clock
  attr_accessor :hour, :minute
  
  def initialize(hour: 0, minute: 0)
    @hour = hour
    @hour += minute/60
    @minute = minute%60
  end
  
  def to_s 
    "#{(hour%24).to_s.rjust(2,"0")}:#{(minute).to_s.rjust(2,"0")}" 
  end
  
  def +(other)
    Clock.new(hour: (hour + other.hour), minute: (minute + other.minute))
  end
  
  def -(other)
    Clock.new(hour: (hour - other.hour), minute: (minute - other.minute))
  end
  
  def ==(other)
    self.to_s == other.to_s
  end
end