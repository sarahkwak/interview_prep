var Person = function(name) {
  this.name = name;
}

Person.prototype.speak = function() {
  console.log("hello");
};


var NEW = function(newobj, assets) {
  var babyobj = {};
  babyobj.__proto__ = newobj.prototype;
  newobj.apply(babyobj, assets);
  return babyobj;
}


var person = NEW(Person, ['name']);
person.speak();

INSTANCEOF(person, Person);
var INSTANCEOF = function(instance, constructor) {
  if (instance.__proto__.constructor === constructor) {
    return true
  }
  return false
}

//get all function from Person object