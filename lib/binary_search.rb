class BinarySearch
  attr_reader :head

  def push(data)
    if head && head > data
      @left = left.push(data)
    elsif head && head < data
      @right = right.push(data)
    else
      @head = Node.new(data)
    end
  end



end

class Node
  attr_reader :value, :left, :right

  def initialize(value)
    @value = value
  end

  def push(data)
    if value > data
      check_left(data)
    elsif value < data
      check_right(data)
    else
      @head = Node.new(data)
    end
  end

  def check_left(data)
    if left
      left.push(data)
    else
      @left = Node.new(data)
    end
  end

  def check_right(data)
    if right
      right.push(data)
    else
      @right = Node.new(data)
    end
  end
end
