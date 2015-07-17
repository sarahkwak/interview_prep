def frequent_word(sentence)
  words = sentence.split(" ")
  hash = Hash.new(0)
  array = []
  words.each do |word|
    hash[word]+=1
  end
  max = hash.values.max
  new_hash = hash.select { |k,v| v == max }
  new_hash.keys
end

sentence = "First off hi back at ya, in My neck of the woods (Northern Michigan) the NA tribes used wood wood wood both snapping turtle neck skin and wood chuck hide. The woodchuck hide was and is looks pretty cool. Here's a pic of a Potawatomi bow with the original is string....it's from the Peabody Museum. Sorta looks like one big string silencer to me, the eh? we we we we we"

p frequent_word(sentence)
