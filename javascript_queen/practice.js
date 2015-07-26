//Build a tag library that creats elements of the following types
// a, div, span, form, h1, h2, h3, h4
var elements = ['a', 'div', 'span', 'form','h1', 'h2', 'h3', 'h4'];
var make = {};
// for (var key in elements) {
//     make[elements[key]] = (function(){
//       return document.createElement(elements[key])
//   })();
// }


// foreach way
elements.forEach(function(element) {
  make[element] = (function() {
    return document.createElement(element)
  })();
})