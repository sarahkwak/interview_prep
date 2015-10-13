def flatten(arr)
  new_arr = []
  arr.each do |ele|
    if ele.class == Array
        ele.each do |small|
          new_arr.push(small)
        end
    else
      new_arr.push(ele)    
    end
  end
  new_arr
end

arr = ['String', [1,2,3],[4,5],7,8,{'a'=>'b'}, [[9, 10]]]
p flatten(arr)