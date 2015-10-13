def factorial(num)
  if num == 1
    return num
  end
  result = num * factorial(num-1)
end

def add_until(num)
  if num == 1
    return 1
  end
  num + add_until(num-1)
end

def fibonacci_checker(num)
  first = 1
  second = 2
  third = first + second
  while second < num
    if third == num
      return true
    end
    first = second
    second = third
    third = first + second
  end
end

p fibonacci_checker(145)

def flatten_function(arr, num)
  arr.gsub(/[[]]/, "")
end