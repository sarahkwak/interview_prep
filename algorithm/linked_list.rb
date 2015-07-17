# Wthin the single linked list, the function returns nth from the last node value
# 1. The function will return last from nth node value from any linked list
# 2. list = 1=>4=>3=>10=>7 will return 2 when n is 2
# node is something that has attribute of value and next node address

class Node
  attr :value
  attr_accessor :next_node
  def initialize(val)
    @value=val
    @next_node
  end
end

class Linked_list
  attr :first_node, :last_node
  def initialize
    @first_node
    @last_node
  end

  def add(node)
    if @first_node == nil
      @first_node = node
      @last_node = node
    else
      @last_node.next_node = node
      @last_node = node
    end
  end
end

my_list = Linked_list.new
my_list.add(Node.new(3))
my_list.add(Node.new(5))
my_list.add(Node.new(2))
my_list.add(Node.new(34))
my_list.add(Node.new(35))


def last_nth_node (list, n)
  head = list.first_node
  n-1.times do
    if head.next_node == nil
      return nil
    end
    head = head.next_node
  end
  result = list.first_node
  while true
    if head.next_node == nil
      return result.value
    end
      head = head.next_node
      result = result.next_node
  end
end
# p my_list.first_node
p last_nth_node(my_list, 3)