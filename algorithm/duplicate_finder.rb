def duplicate_finder(arr)
  hash = Hash.new(0)
  result = []
  arr.each do |ele|
  hash[ele] += 1
  hash.select {|key, value| result.push(key) if value > 1}
  end 
  p result.uniq
end 

duplicate_finder([1,2,3,3,4,5,6,6,6])