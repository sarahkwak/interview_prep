# interview_prep
1. Ruby Orange Tree
The learning objectives for this exercise are:
Understand ruby class
Understand ruby object
Understand attr_ operator
Understand enumerables (inject, reduce)
# Sum some numbers
(5..10).reduce(:+)                            #=> 45
# Same using a block and inject
(5..10).inject {|sum, n| sum + n }            #=> 45
# Multiply some numbers
(5..10).reduce(1, :*)                         #=> 151200
# Same using a block
(5..10).inject(1) {|product, n| product * n } #=> 151200
# find the longest word
longest = %w{ cat sheep bear }.inject do |memo,word|
   memo.length > word.length ? memo : word
end
longest                                       #=> "sheep"