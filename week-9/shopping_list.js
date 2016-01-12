//  create a new (empty) list
//  add an item and optional quantity
//  remove an item list
//  Update quantity
//  Print

// Function CreateList
// function to create a list
// input: nothing (following best practice to create things as blank)

// steps: create new empty listItems
//
// output: creation of new list

// funtion addItem
// input:  item name and optional quantity
// steps:
// IF quantity does not exist
//  inputQuantity = 1
// LOOP through list items and check if item already exists
//  IF item already exists
//   Add inputQuantity to item's Quantity
//  Else
//  Create item with input Quantity
// END if
// End Loop
// output: item is added

// function removeItem to remove item from list
// input: item name
// Loop through line items and check if item exists
// IF it does, remove the line item
// ELSE, print that item name does not exist
// Output: item is removed (possibly)

// function updateQuantity to update quantity of an item
// input: item name and quantity
// steps
// Check if item exists
//  IF it exists
//      Change quantity of item
//   ELSE
//    Print item doesn't exist.
//  output: Quantity is changed/ print

// function printList to print a list prettily
// input: nothing
// steps:
//    Loop through list
//      print item and quantities
//    End Loop

// output: Printing of list

function ShoppingList() {
  this.listItems = {};
}

ShoppingList.prototype.addItem = function(item, quantity) {
  if (!quantity) {
    var quantity = 1;
    }
  if(this.listItems.hasOwnProperty(item)) {
    this.listItems[item] += quantity;
  }
  else {
    this.listItems[item] = quantity;
  }
}
ShoppingList.prototype.updateItem = function (item, quantity) {
  if (this.listItems.hasOwnProperty(item)) {
    this.listItems[item] = quantity;
  }
  else {
    console.log (item + " does not exist on list");
  }
}
ShoppingList.prototype.removeItem = function (item) {
  if (this.listItems.hasOwnProperty(item)) {
    delete this.listItems[item];
  }
  else {
    console.log (item + " does not exist on list");
  }

}

ShoppingList.prototype.printList = function () {
  console.log ("Shopping List");
  console.log ("____________");
  for (var item in this.listItems) {
    if (this.listItems.hasOwnProperty(item)) {
      console.log (item + ": " + this.listItems[item]);
    }
  }

}

// Refactor

function ShoppingList() {
  this.listItems = {};
  // Why create a separate list Object? In case you want to add properties to the shopping list like a store, or a total. Those might better
}

ShoppingList.prototype.addItem = function(item, quantity) {
  if (!quantity) {
    var quantity = 1;
    }
  if(this.listItems.hasOwnProperty(item)) {
    this.listItems[item] += quantity;
  }
  else {
    this.listItems[item] = quantity;
  }
}

ShoppingList.prototype.updateItem = function (item, quantity) {
  if (this.listItems.hasOwnProperty(item)) {
    this.listItems[item] = quantity;
  }
  else {
    console.log (item + " does not exist on list");
  }
}

ShoppingList.prototype.removeItem = function (item) {
  if (this.listItems.hasOwnProperty(item)) {
    delete this.listItems[item];
  }
  else {
    console.log (item + " does not exist on list");
  }

}

ShoppingList.prototype.printList = function () {
  console.log ("Shopping List");
  console.log ("____________");
  for (var item in this.listItems) {
    console.log (item + ": " + this.listItems[item]);
  }

}


// Pilot Code
var safewayList = new ShoppingList();
safewayList.addItem("apples", 4);
safewayList.printList();
safewayList.addItem("apples", 1);
safewayList.addItem("bananas");
safewayList.addItem("Steel Cut Oats");
safewayList.addItem("pears");

safewayList.updateItem("bananas", 25);
safewayList.updateItem("oranges", 1);
safewayList.removeItem ("oranges");
safewayList.removeItem ("Steel Cut Oats");
safewayList.printList();

// Reflect
// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// Constructors really feels solidified here.

// What was the most difficult part of this challenge?
// Redoing the pseudo code

// Did an array or object make more sense to use and why?
//  An object, because we were storing two things- an item and its quantity.
// I made it an object within an object in case we were adding properties like total, or store name, etc.

