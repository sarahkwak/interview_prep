class Node
  attr :val
  attr_accessor :next_node
  def initialize(val)
    @val = val
    @next_node
  end
end

class Linkedlist
  attr_accessor :first_node, :last_node
  def initialize
    @first_node
    @last_node
  end

  def add(new_node)
    if @first_node == nil
      @first_node = new_node
      @last_node = new_node
    else
      @last_node.next_node = new_node
      @last_node = new_node
    end
  end
end

myList = Linkedlist.new
myList.add(Node.new(1))
myList.add(Node.new(2))
myList.add(Node.new(3))
myList.add(Node.new(4))
# p myList.first_node
myList.add(Node.new(5))
myList.add(Node.new(6))
# p    myList

def nth_from_last(node, n)
  head = node.first_node
  (n-1).times do
    if head == node.last_node
      return nil
    end
    head = head.next_node
  end
  result = node.first_node
  while true
    if head.next_node == nil
      return result
    end
    head = head.next_node
    result = result.next_node
  end
end

 p nth_from_last(myList, 5)