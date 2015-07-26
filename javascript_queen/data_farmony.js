var AnimalCreator = function(username, species, tagline, noise) {
  return {
    username: username,
    species: species,
    tagline: tagline,
    noise: noise,
    friends: []
  };
}

var sheep = AnimalCreator('Cloud', 'sheep', 'You can count on me!', ['baahhh', 'arrgg', 'chewchewchew']);
// console.log(sheep);
var cow = AnimalCreator('9', 'cow', 'you will not be loney', ['baahh', 'moooo']);
var llama = AnimalCreator('Carl', "i am the best", ['bs', 'blaaah']);
var animals = [sheep, cow, llama];

var friends_list = [];

friends_list.push(animals[0].username, animals[1].username)
// console.log(friends_list);

var relationships = {};
relationships.friends = friends_list;
relationships.matches = [];
for (var i in animals) {
  animals[i].relationships = {};
}
console.log(animals)