var Animal = function(name) {
  this.name = name;
  this.eats = function() {
  console.log(this.name + " is eating");
  };
}

// Animal.prototype.eats = function() {
//   console.log(this.name + " is eating");
// };

var joy = new Animal("joy");
joy.eats();

var Mamul = function(name) {this.name = name;};
var Mamul = function(name) { Animal.call(this, name)}

Mamul.prototype = new Animal()


brian = new Mamul('bri');

brian.eats();