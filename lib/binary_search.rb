class Node
  attr_reader :value, :left, :right, :head

  def initialize(value)
    @value = value
  end

  def push(data)
    if left? && data < self.value
      left.push(data)
    elsif data < self.value
      @left = Node.new(data)
    end

    if right? && data > self.value
      right.push(data)
    elsif data > self.value
      @right = Node.new(data)
    end

    if !left? && !right?
      @head = Node.new(data)
    end

  end

  def left?
    left
  end

  def right?
    right
  end

end

class BinarySearch < Node
  attr_reader :head

  def initialize

  end

  def load_file(file_name)
    @input = File.read(file_name)
  end

  def load_tree(input)
    datum = input.split('\n')
    datum.each do |data|
      push(data.to_i)
     end
  end

end

if __FILE__ == $0
   tree = BinarySearch.new
   input = tree.load_file(ARGV[0])
   tree.load_tree(input)
   puts tree.head.value
end
