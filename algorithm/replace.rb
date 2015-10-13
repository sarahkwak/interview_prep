def replace(sentence)
  sentence = sentence.gsub(/['][s]/, '20%')
  p sentence
end 

replace("hello's world")