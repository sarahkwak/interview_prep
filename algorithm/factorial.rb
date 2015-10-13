def factorial(num)
  if num == 1
    return 1
  end
  num * factorial(num-1)
end

p factorial( 11 )