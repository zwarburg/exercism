class Element
  attr_accessor :datum, :next

  def initialize(data)
    @datum = data
    @next = nil
  end
end

class SimpleLinkedList
  attr_accessor :head

  def initialize(arr = [])
    @head = nil
    arr.each do |element|
      push(Element.new(element))
    end
  end

  def push(element)
    temp = @head
    @head = element
    @head.next = temp
    self
  end

  def pop
    return @head if @head.nil?
    temp = @head
    @head = @head.next
    return temp
  end

  def reverse!
    current = head
    previous_element = nil
    while current!= nil
      next_element = current.next
      current.next = previous_element
      previous_element = current
      current = next_element
    end
    @head = previous_element
    self
  end

  def to_a
    result = []
    current = @head
    while current != nil
      result << current.datum
      current = current.next
    end
    result
  end
end

module BookKeeping
  VERSION = 1
end
