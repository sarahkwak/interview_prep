# def factorial(num)
#   if num == 1
#     return num
#   end
#   result = num * factorial(num-1)
# end

# def add_until(num)
#   if num == 1
#     return 1
#   end
#   num + add_until(num-1)
# end

# def fibonacci_checker(num)
#   first = 1
#   second = 2
#   third = first + second
#   while second < num
#     if third == num
#       return true
#     end
#     first = second
#     second = third
#     third = first + second
#   end
# end

def fibonacci_checker(num)
  first = 1
  second = 1
  third = first + second
  while second < num
    first = second
    second = third
    p third = first + second
    if third == num
      return true
    end
  end
end 

# fibonacci_checker(54323)

# def flatten_function(arr, num)
#   arr.gsub(/[[]]/, "")
# end

