# def palindrome?(word)
#   if word.reverse == word
#     return true
#   end
#   false
# end

def palindrome?(word)
  new_word = word.split("")
  complete = []
  word.size.times do
    p complete.push(new_word.pop)
  end
  return true if complete.join("") == word
end

p palindrome?('racecar')
p palindrome?('cat')
p palindrome?('anna')