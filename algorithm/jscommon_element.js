var common_element = function(arr1, arr2) {
  var hash = {};
  for (var i=0; i<arr1.length; i++) {
    hash[arr1[i]] = false
  }
  for (var j=0; j<arr2.length; j++) {
    if (hash[arr2[j]] != null) {
      hash[arr2[j]] = true
    }
  }
  return 
}
console.log(common_element([1,2,3,4], [3,4,5,6]))

// var commonE = function(arr1, arr2) {
//   var hash = {};
//   for (var i=0; i<arr1.length; i++) {
//     hash.arr1[i] = true;
//   }
//   for (var j=0; j< arr2.length; j++) {
//     if (hash.arr2[j] != nil) {
//       hash.arr2[j] = true;
//     }
//   }
//   return Objec.keys(hash)
// }