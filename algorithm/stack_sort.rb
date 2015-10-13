def regular_sort(arr) 
  result = []
  smallest = arr.first
  if arr.length == 0
    return result
  end 
  for i in 1..arr.length-1
    if smallest >= arr[i]
      smallest = arr[i]
    end 
  end
  arr.delete_at(arr.rindex(smallest))
  result.push(smallest)
  result+=stack_sort(arr)
end

# def stack_sort(arr)
#   temp = []
#   final = []
#   sorted_array = []
#   smallest = arr.last
#   if arr.length == 0
#     return sorted_array
#   end
#   while arr.length > 0
#     if smallest >= arr.last
#       smallest = arr.last
#     end
#      temp.push(arr.pop)
#   end 
#   while temp.length > 0
#     skip = temp.pop
#     if skip == smallest
#       sorted_array.push(skip)
#     else
#       final.push(skip)
#     end
#   end
#   p sorted_array+=stack_sort(final)
# end

def stack_sort(arr)
  sorted_arr = []
  smallest = arr.pop
  temp = [smallest]
  final = []
  if arr.length == 0 
    return sorted_arr
  end
  while arr.length > 0
    if smallest >= arr.last
      smallest = arr.last
    end
    temp.push(arr.pop)
  end
  sorted_arr.push(smallest)
  temp.delete_at(temp.index(smallest))
  sorted_arr+=stack_sort(temp)
end


def queue_sort(arr)
  biggest = arr.shift
  temp = [biggest]
  sorted_arr = []
  rest = []
  if arr.length == 0
    return sorted_arr
  end
  while arr.length > 0
    if arr.first > biggest
      biggest = arr.first
    end 
    temp.push(arr.shift)
  end 
  while temp.length > 0
    if temp.first == biggest
      sorted_arr.push(temp.shift)
    else
      rest.push(temp.shift)
    end
  end 
  sorted_arr+=queue_sort(rest)
end

stack_sort([7, 8, 124, 2, 51, 33, 22, 4, 4, 99, 18, 5, 111])


