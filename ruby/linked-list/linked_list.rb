class Element
  attr_accessor :datum, :next, :prev

  def initialize(data)
    @datum = data
    @next = nil
    @prev = nil
  end
end

class Deque
  attr_accessor :head, :tail

  def initialize()
    @head = nil
    @tail = nil
  end

  def push(val)
    element = Element.new(val)
    if @head
      element.next = @head
      @head.prev = element
      @head = element
    else
      @head = @tail = element
    end
  end

  def unshift(val)
    element = Element.new(val)
    if @tail
      element.prev = @tail
      @tail.next = element
      @tail = element
    else
      @head = @tail = element
    end
  end

  def pop
    result = head.datum
    @head = @head.next
    @head.prev = nil unless @head.nil?
    return result
  end

  def shift
    result = tail.datum
    @tail = @tail.prev
    @tail.next = nil unless @tail.nil?
    return result
  end
end

module BookKeeping
  VERSION = 1
end
