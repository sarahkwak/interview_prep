def suggest_friend(list)
  values = list.values 
  mutual_friends = []
  hash_value = Hash.new(0)
  keys = list.keys
  for value in values
    for i in 0..(value.length-1)
      hash_value[value[i]]+=1 
    end 
  end
  hash_value.select {|key, value| mutual_friends.push(key) if value > 1 }
  keys = keys.combination(2).to_a
  keys = keys.map { |pair| pair.sort }.uniq
  keys.each do |pair|
    for friend in mutual_friends
      if list[pair[0]].include?(friend) and list[pair[1]].include?(friend)
        p pair[0].to_s + ' and ' + pair[1].to_s + ' has mutual friend '+ friend + ' so they should be a friend'
      end
    end
  end
end
people_list = {
ryan: ['steve', 'tom', 'bryant', 'gill', 'baxter'],
sarah: ['gill', 'heather', 'ling', 'ayako'],
brian: ['baxter', 'sophie'],
sophie: ['steve', 'gill', 'baxter']
}
suggest_friend(people_list)