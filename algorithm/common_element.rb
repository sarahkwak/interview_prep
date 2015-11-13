# def common_element(arr1, arr2)
#   hash = Hash.new
#   arr1.each do |individual|
#     hash[individual] = false
#   end
#   arr2.each do |individual|
#     if hash[individual] != nil
#       puts individual
#     end
#   end

#   # hash.select { |key, value| p key if value >= 2 }
# end

def common_element(arr1, arr2)
  hash = Hash.new
  arr1.each do |ele|
    hash[ele] = true
  end
  arr2.each do |ele|
    if hash[ele] != nil
      hash[ele] = false
    end
  end
  hash.select { |key, value| p key if value == false }
end
common_element([1,2,3,4,5,6], [3,4,5,6,7])

