def missing_number(arr)
  i = 0
  while i < arr.length-1
    if arr[i] != arr[i+1]-1
      arr[i]
      arr[i+1]-1
      return false
    end
    i+=1
  end
  return true
end

p missing_number([1,2,3,4, 5, 6])
