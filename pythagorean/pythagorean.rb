def pythagorean?(a, b, c)
  (c*c) == (a*a) + (b*b)
end


def find_abc(pythagorean = [])
  range= (199..500).to_a
  result = range.combination(3).to_a
  result.each do |individual|
    a = individual[0].to_i
    b = individual[1].to_i
    c = individual[2].to_i
    if pythagorean?(a, b, c) && (a+b+c) == 1000
      pythagorean.push(a, b, c)
    end
  end
  return pythagorean
end

p find_abc