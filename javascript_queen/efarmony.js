var AnimalTestUser = function(username) {
  var otherArgs = [];
  for (var i=1; i < arguments.length; i++) {
    otherArgs.push(arguments[i])
  }
  return {
    username: username,
    otherArgs: otherArgs
  };
};

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
var addFriend = function(animal1, animal2) {
  var friends = animal1.friends
  return friends.push(animal2.username);
};

addFriend(sheep, cow);
addFriend(sheep, llama);
addFriend(cow, sheep);
addFriend(llama, cow);
myFarm = [sheep, cow, llama];
// console.log(myFarm);

var addMatchesArray = function(farm) {
  for (var i in farm) {
    farm[i].matches = [];
  }
}

addMatchesArray(myFarm);
// console.log(myFarm)

var giveMatches = function(farm) {
  for (var i =0; i<farm.length; i++) {
    farm[i].matches = farm[i].friends[0]
  }
}
// console.log(myFarm)
giveMatches(myFarm);
console.log(myFarm);