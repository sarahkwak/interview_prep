def polish_note(arr)
  num_arr = []
  symbol_arr = []
  arr.each do |element|
    if element == "+" or element =="-" or element == "/" or element == "*"
      symbol_arr.push(element)
    else
      num_arr.push(element)
    end
  end
    (num_arr.length-symbol_arr.length).times do
      symbol_arr.push(nil)
    end
    result_arr = []
    result_arr.push(num_arr)
    result_arr.push(symbol_arr)
    result = result_arr.transpose.flatten.join(",")
    p result = result.gsub(/,/, "")
end


# example
# ["2", "1", "+", "3", "*"] -> ((2 + 1) * 3) -> 9
# ["4", "13", "5", "/", "+"] -> (4 + (13 / 5)) -> 6
polish_note(["2", "1", "+", "3", "*"])