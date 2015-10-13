def common_element(arr1, arr2)
  hash = Hash.new
  arr1.each do |individual|
    hash[individual] = false
  end
  arr2.each do |individual|
    if hash[individual] != nil
      puts individual
    end
  end

  # hash.select { |key, value| p key if value >= 2 }
end

common_element([1,2,3,4], [3,4,5,6,7])

