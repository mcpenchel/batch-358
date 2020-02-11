console.log("JS is awesome! Don't be scared");

// Testing your code

// executing on the terminal: node path_to_the_file.js     -- runs your file
// executing on the terminal: node                         -- opens REPL ("irb")

// Basic Types

'14' // string
77   // number
77.5 // number
true // boolean

typeof('14') // returns the type of '14': string

// Type casting

Number.parseInt('14', 10) // will return 14 as a number
(14).toString(); // will return 14 as a string

// Variables

let age = 17;           // Can re-assign
const name = "Matheus"; // Cannot re-assign

// Naming convention: lower CamelCase

let bestTeam = "Botafogo";

// String

bestTeam.toUpperCase();
bestTeam.toLowerCase();

// String interpolation

`I don't know how ${bestTeam} lost yesterday....`

// Array

const ledZeppelin = ["Robert Plant", "Jimmy Page"];

ledZeppelin[0]                       // READ
ledZeppelin[0] = "Matt Penchel"      // UPDATE
ledZeppelin.push("John Paul Jones"); // CREATE
ledZeppelin.splice(0, 1)             // DELETE 1 element starting at index 0

// Looping over arrays

ledZeppelin.forEach((theArtist) => {
  console.log(theArtist);
});

// Flow (conditionals)

let age = 18;

if (age >= 60) {
  console.log("Are you sure you want to vote man?");
} else if (age >= 18) {
  console.log("You can vote!");
} else {
  console.log("Go study to be a decent voter soon");
}

// JavaScript Objects (similar to Ruby Hash)

const teacher = {
  firstName: "Matt",
  lastName: "Penchel",
  age: 30,
  footballTeam: "Botafogo"
}

teacher['firstName'] // READ
teacher.firstName    // READ

teacher.middleName = "Charif" // CREATE
teacher.firstName = "Matheus" // UPDATE

// Equality comparison

// === stands for checking the values as they are

0 === 0   // returns true
0 === '0' // returns false

// == stands for checking after type_casting (if needed)

0 == 0    // returns true
0 == '0'  // returns true
