// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:



// Release 1:s
var releaseOne = document.getElementById('release-0');
releaseOne.className = ("done");



// Release 2:

var releaseTwo = document.getElementById('release-1');
releaseTwo.style.display = 'none';


// Release 3:

var releaseThree = document.getElementsByTagName('h1');
console.log(releaseThree);
releaseThree[0].innerHTML = "I completed Release 2";




// Release 4:

var releaseFour = document.getElementById('release-3');
releaseFour.style.backgroundColor = "#955251";


// Release 5:

var releaseFive = document.getElementsByClassName('release-4');
for (var i = 0, length = releaseFive.length; i < length; i++) {
  releaseFive[i].style.fontSize = "2em";
}

// Release 6:

var templ = document.getElementById('hidden');
document.body.appendChild(templ.content.cloneNode(true));

// Release 7: Reflect
// What did you learn about the DOM?
// that everything is a child of the document, so you have to start there to get any other element.

// What are some useful methods to use to manipulate the DOM?
// a key thing is that the style methods aren't snake_case, the way they are in HTML/CSS. They're camelCase.
