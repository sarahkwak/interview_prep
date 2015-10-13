def array_rotation(n, k)
  arr = []
  rotate_array = []
  for i in 1..n
    arr.push(i)
  end
  k.times do
    rotate_array.push(arr.pop())
  end
  result_array = rotate_array.reverse + arr
end

p array_rotation(7, 3)