# def frequent_word(sentence)
#   words = sentence.split(" ")
#   hash = Hash.new(0)
#   array = []
#   words.each do |word|
#     hash[word]+=1
#   end
#   max = hash.values.max
#   new_hash = hash.select { |k,v| v == max }
#   new_hash.keys
# end


# # p frequent_word(sentence)


# def most_frequent_word(sentence)
#   sentence_arr = sentence.split(" ")
#   counter = 1
#   hash = Hash.new(0)
#   sentence_arr.each do |word|
#     hash[word]+=1
#   end
#   max = hash.values.max
#   p hash.key(max)
# end

# # most_frequent_word(sentence)



# def inner_join(arr1, arr2)
#   result_hash = Hash.new(0)
#   arr1.uniq.each do |element|
#     result_hash[element]+=1
#   end
#   arr2.uniq.each do |element|
#     result_hash[element]+=1
#   end
#   max = result_hash.values.max
#   result_hash.select { |key, value| p key if value == max }
# end

# inner_join([1,2,3,4, 5], [3,4,5,6])

# def find_frequent_word(sentence)
#   sentence_arr = sentence.gsub(/[.,]/, "").split(" ")
#   sentence_hash = Hash.new(0)
#   sentence_arr.each do |word|
#     sentence_hash[word]+=1
#   end
#   max_value = sentence_hash.each_value.max
#   sentence_hash.select {|k, v| puts k if v == max_value }
# end

# def inner_join(arr1, arr2)
#   arr_hash = Hash.new(0)
#   arr1.each do |num|
#     arr_hash[num] = 1
#   end
#   arr2.each do |num|
#     arr_hash[num]+=1
#   end
#   arr_hash.select { |k,v| puts k if v == 2 }
# end

# def full_outter_join(arr1, arr2)
#   arr_hash = Hash.new(0)
#   arr1.each do |num|
#     arr_hash[num] = 1
#   end
#   arr2.each do |num|
#     arr_hash[num]+=1
#   end
#   arr_hash.select { |k,v| puts k if v <= 1 }
# end

def left_join(arr1, arr2)
  arr_hash = Hash.new(0)
  arr1.each do |num|
    arr_hash[num] = 1
  end
  arr2.each do |num|
    arr_hash[num]-=1
  end
  arr_hash.select { |k,v| puts k if v == 1 }
end

sentence = "First off hi back at ya, in My neck of the woods (Northern Michigan) the NA tribes used wood wood wood both snapping turtle neck skin and wood chuck hide. The woodchuck hide was and is looks pretty cool. Here's a pic of a Potawatomi bow with the original is string....it's from the Peabody Museum. Sorta looks like one big string silencer to me, the eh? we we we we we"

def find_frequent_word(sentence)
  words = sentence.split(' ')
  hash = Hash.new(0)
  words.each do |word|
    hash[word] = hash[word]+=1
  end
  max_value = hash.values.max
  hash.select { |key, value| p key if value == max_value}
end 
# find_frequent_word(sentence)

def left_join(arr1, arr2)
  hash = Hash.new
  arr1.each do |ele|
    hash[ele] = true
  end 
  arr2.each do |ele|
    if hash[ele] = false
    end 
  end
  hash.select { |k, v| p k if v == true }
end 
first = [1,1,2,3,4,5]
second = [4,5,6,7,8]
left_join(first, second)
