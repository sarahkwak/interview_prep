def fibonacci_checker(nums)
    l = 1
    m = 1
    n = l + m
  while m < nums
    if nums == n
      return true
    end
      l = m
      m = n
      n = l + m
  end
  return false
end

p fibonacci_checker(90)
# 1 1 2 3 5 8 13

def fibonacci_creater(nums)
  p l = 1
  p m = 1
  p n = l + m
  (nums-3).times do
     l = m
     m = n
    p n = l + m
  end
end

fibonacci_creater(70)