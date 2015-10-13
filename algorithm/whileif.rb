def some_function(arr)
  even = []
  odd = []
  bigger = []
  while arr.length > 0
    if arr.first % 2 == 0
      even.push(arr.shift)
    else
      odd.push(arr.shift)
    end
  end 
  while even.length > 0 
    if even.last > 9
      bigger.push(even.pop)
    end
    even.pop
  end 
  p bigger
end

def bubble_sort(arr)
  (arr.length).times do 
    for i in 0..arr.length-2
      first = arr[i]
      second = arr[i+1]
      if first > second
        arr[i] = second
        arr[i+1] = first
      end
    end
  end 
  p arr
end


example = [1,6,4,4,6,3,456,34,234,7,54,7,3457,54]
p 'example length is ' + example.length.to_s
p example.sort
bubble_sort(example) 
