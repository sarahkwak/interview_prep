# example
# (I(really)love (al(g)or)rithms) => True
# )This is false( => false


# def has_matching_parentheses?(sentence)
#   result = sentence.split("")
#   result.delete_if { |char| char != "(" and char != ")" }
#   if result[0] != "(" or result[-1] != ")"
#       return false
#   end
#   counter = 0
#   for i in 0..-1
#     if result[i] == "("
# end
def has_matching_parentheses?(sentence)
  result = sentence.split("")
  counter = 0
  result.each do |char|
    if char == "("
      counter += 1
    elsif char ==")"
      counter -= 1
    end
    return false if counter < 0
  end
    return false if counter > 0
    return true
end

def has_matching_parentheses_part2?(sentence)
  result = sentence.split("")
  new_array = []
  opening = ["(", "[", "{", "<"]
  closing = [")", "]", "}", ">"]
  hash_value = {}
  for i in 0..3
    hash_value[opening[i]] = closing[i]
  end
  for i in 0..(result.size-1)
    if opening.include?(result[i])
      new_array.push(result[i])
      i += 1
    elsif closing.include?(result[i])
      if new_array[-1] == hash_value.key(result[i])
        new_array.pop
        i += 1
      else
        return false
      end
    end
  end
    return false if new_array.size != 0
    true
end

example = "<>{}<{}{}>()"
p has_matching_parentheses_part2?(example)
# hash_value = {}
  # hash_value["("] = 1
  # hash_value[")"] = -1
  # for i in 0..-1
  #   if result[i] == hash_value["("] or result[i] == hash_value[")"]
  #