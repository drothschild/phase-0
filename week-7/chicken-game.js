// Pseudocode: Object of the game:
// To have a chicken for dinner.
// Characters: Player
// Objects: Player (alive, hungry)
// Chicken: alive. cannot be taken until its dead. Cannot be eaten until its cooked.
// Bow and arrow: can be shot.
// stove: Can cook things.
// Player: an object with the qualities of being alive, being hungry, and holding a bow
// He/she must first hold the bow and arrow, shoot the chicken with it, and then take the chicken and put it on the stove. Only then may he/she eat the chicken and win the game.
var player = {
  name: "yourself",
  hungry: true,
  alive: true,
  weight: 75,
  food: true,
  location: "room",
    take: function (object) {
    if (object.held) {
      console.log("You're already holding the object.");
    }
    else if (object.alive) {
      console.log("It wriggles out of your hands.");
    }
          else if (object.location != this.location) {
      console.log("You don't see anything like that here.");
    }
    else if (object.weight > this.weight){
      console.log("It's too heavy for you to lift.");
    }
    else {
      object.held = true;
    console.log("You are now holding " + object.name + "." );
    // later add object to inventory array
        }
  },
    drop: function (object) {
      if (!object.held) {
      console.log("You're not holding the object.");
  }
    else {
      object.held = false;
          console.log("Dropped.");
    }

  },
  eat: function (object) {
          if (!object.held) {
      console.log("You're not holding the object.");
  }
    else if (!object.edible) {
            console.log("That's inedible. Perhaps if you cooked it?")
    }
      else {

                    console.log("Well, you ate " + object.name + " and it has gone to Heaven. Hope you're happy.");
        object.held = false;
        object.location = "Heaven"
        this.weight += object.weight;
        this.hungry = false;
      }
    }




}

var chicken =  {
  name: 'Charles the Chicken',
  alive: true,
  weight: 6,
  food: true,
  location: "room",

};
var bowAndArrows = {
  name: 'Bow and Arrows',
  weight: 1,
  location: "room",
  shoot: function (object) {
    if (!this.held) {
      console.log ("You need to hold the bow and arrows to shoot it.")
    }
    else if (!object.alive)
    {
      console.log ("You pointlessly shoot " + object.name + ".")
    }


    else {
    object.alive = false;
            console.log ("Well, you killed " + object.name + ".")
    }
  },
};
var stove = {
  name: "stove",
  weight: 120,
  location: "room",
  cook: function (object) {
              if (!object.held) {
      console.log("You're not holding the object.");
  }
    else if (object.food)
      {
        object.held = false;
        object.edible = true;
              console.log("You can now eat " + object.name + ".");

      }
    else
      {
        object.location = "Heaven"
         console.log("You have now destroyed " + object.name + ". It is a pile of tiny ashes.");

      }
  }
};

console.log ("You are standing in a small room. In there is a chicken, a bow and arrow, and a stove. You are quite hungry. You lunge for the chicken.");

player.take (chicken)

// Refactor
// I couldn't find anything to refactor here.

// Reflection
// What was the most difficult part of this challenge?
// Finding bugs was the hardest part of the challenge, since the console often didn't tell me what line was wrong.
// Also programming all the different permutations that could happen with 4 objects. I left an easter egg, where you can shoot, cook, and eat yourself, at which point you will ascend to heaven, and can eat the chicken all over again.
// Also, I spent a while trying to delete an object, before deciding to just change its location to heaven.
// What did you learn about creating objects and functions that interact with one another?
// Functions are objects, even if they're within other objects.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I honestly didn't find any methods that seriously refactored my solution.
// How can you access and manipulate properties of objects?
// In this program, it's done through functions that set the properties of variables (mostly to true or false.) The function that's a variable of a bow and arrow can then change whether the chicken is alive or dead.)
 //