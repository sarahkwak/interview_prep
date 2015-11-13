class Warehouse
  
  def initialize
    @queue = Hash.new
  end 

  def in(unit, priority)
    @queue[priority] = unit
  end

  def process
    keys = @queue.keys.sort
    @priority_container = []
    for p_value in keys
     @queue.select { |priority, unit| @priority_container.push(unit) if priority == p_value }
    end
    @priority_container.each { |job| p job }
  end

end

warehouse = Warehouse.new
warehouse.in(5, 4)
warehouse.in(1, 3)
warehouse.in(3, 2)
warehouse.process # 3, 1, 5