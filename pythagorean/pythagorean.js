// pythagorean will return 3 pythagorean numbers that is 1000 in sum

var pythagorean_sum1000 = function() {
  pythagorean = function(a, b, c) {
    if ((a*a) + (b*b) == c*c) {
      return true
    }
  };
  pythagorean_result = [];
  for (var a =2; a<300; a++) {
    for (var b = 3; b<500; b++) {
      c = 1000-(a+b)
      if (pythagorean(a,b,c) === true) {
        pythagorean_result.push(a,b,c)
      }
    }
  }
  return pythagorean_result;
};

console.log(pythagorean_sum1000())