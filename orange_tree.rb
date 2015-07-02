class OrangeTree
  attr_accessor :height, :age, :oranges
  def initialize
    @height = 0
    @age = 0
    @oranges = []
  end

  def age!
    @age += 1
    @height += rand(1..3)
    if @age>3 and @age<35
      @orange = Orange.new
      rand(10..26).times { @oranges.push(@orange) }
    else
      0
    end
  end

  def any_oranges?
    if @oranges.size > 0
      true
    end
  end

  def pick_an_orange!
    if any_oranges?
     @oranges.pop
    end
  end

  def dead?
    if @age > 37
      true
    end
  end

end

class Orange
  attr_accessor :diameter
  def initialize
    @diameter = rand(2..5)
  end

end


tree = OrangeTree.new

tree.age! until tree.any_oranges?

puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

until tree.dead?
  basket = []

  # It places the oranges in the basket
  # IT PLACES THE ORANGES IN THE BASKET
  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end

   # It's up to you to calculate the average diameter for this harvest.

  avg_diameter = basket.inject(0.0) { |sum, orange| sum + orange.diameter} / basket.size


  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest:     #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
  puts ""

  # Age the tree another year
  tree.age!
end

puts "Alas, the tree, she is dead!"