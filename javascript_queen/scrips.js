var animal = {};
animal.username = "sarah";
animal.tagline = "whatever";
animal.noises = {
  username: 'DaffyDuck',
  tagline: 'Yippeee!',
  noises: []
};

// console.log(animal);
var counter = 0;
for (var key in animal) {
  counter++;
  if (key === 'username') {
    console.log("Hi myname is "+ animal[key]);
  } else if (key === 'tagline') {
    console.log ("I like to say "+ animal[key])
  }
};
console.log(counter)