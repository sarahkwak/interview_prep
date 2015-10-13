def seesaw(arr)
  i = 0
  j = -1
  right_sum = arr[i] + arr[i+1] 
  left_sum = arr[j] + arr[j-1]
  until i == arr.length-3 or j == -(arr.length-2)
    if right_sum == left_sum 
      return true
    elsif right_sum < left_sum
      i+=1
      right_sum += arr[i+1]
    elsif right_sum > left_sum
      j-=1
      left_sum += arr[j-1]
    end
  end
  return false
end
example = [1,3,10,2,5,6,9,4,1,4,8,14,6, 3]
p seasaw(example)