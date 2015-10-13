def interval(arr)
  hash = Hash.new
  arr.each do |ele|
    hash[ele] = ele[1]/ele[0].to_f
  end
  # p hash 
  p result = hash.invert
  final= []
  result.each { |key, value| final.push(value)}
  final
end

p interval([[1,3],[2,6],[8,10],[15,18]])