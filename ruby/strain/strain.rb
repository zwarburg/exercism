module Strain
  def keep
    each_with_object([]) do |val, result|
      result << val if (yield val)
    end
  end
  def discard
    each_with_object([]) do |val, result|
      result << val unless (yield val)
    end
  end
end

class Array
  include Strain
end