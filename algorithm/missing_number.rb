def missing_number(arr)
  i = 0
  while i < arr.length-1
    if arr[i] != arr[i+1]-1
      return arr[i]+1
    end
    i+=1
  end
  return 'nothing is missing'
end

p missing_number([1, 3, 4, 5, 6])    # => 2
p missing_number([1, 2, 3, 4, 6])    # => 5
