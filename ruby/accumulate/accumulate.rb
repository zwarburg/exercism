module Accumulate
  def accumulate
    each_with_object([]) do |val, result|
      result << (yield val)
    end
  end
end

class Array
  include Accumulate
end

module BookKeeping
  VERSION = 1
end