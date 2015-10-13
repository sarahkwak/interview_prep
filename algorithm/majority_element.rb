def majority_element(arr)
  frequent_hash = Hash.new(0)
  arr.each do |element|
    frequent_hash[element]+= 1
  end
  max = frequent_hash.values.max
  frequent_hash.select { |key, value| p key if value == max }
end

majority_element([1, 3, 1, 1, 2, 1, 1])    # => 1
majority_element([3, 1, 2, 2, 2])  # => 2