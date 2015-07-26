var Person = function(name) {
  this.name = name;
}

Person.prototype.isPerson = true


var DOT = function(obj, posession) {
  if (obj.hasOwnProperty(posession)) {
    return obj[posession];
  } else {
   return DOT((obj.__proto__), posession);
  }
};

console.log(DOT(person, 'name')); //person.isPerson

Person.prototype.speak = function() {
  console.log('hello '+ this.name);
};

var person = new Person('smith');

// DOTCALL(obj, prototypeName, args)

var DOTCALL = function(obj, prototypeName, args){
  var fn = DOT(obj, prototypeName)
  if (fn) {
    return fn.apply(obj, args)
  }
};
DOTCALL(person, 'speak', []); //person.speak()
