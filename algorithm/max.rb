def max_three(*args)
  result = []
  if args.length < 4
    return args.sort
  else
    args = args.sort
    result.push(args[0], args[1], args[2])
  end
end 

def max_3(args)
  smallest = args.first
  sorted_arr = []
  temp = []
  second_temp = []
  if args.length == 0
    return sorted_arr
  end 
  while args.length > 0
    if args.first < smallest
      smallest = args.first
    end
    temp.push(args.shift)
  end 
  sorted_arr.push(smallest)
  temp.delete_at(temp.index(smallest))
  sorted_arr+= max_3(temp)
end 

max_3([55, 23, 45, 14, 67, 14, 98, 73, 39])