//: [Previous](@previous)
//: ## Challege - Booleans & Comparison Operators
//:
//: Create a constant named `myAge` and set its value to your age.
//:
//: Then, create a constant names `isVotingAge` that uses Boolean logic to determine if the value stored in `myAge` denotes someone if voting age.

let myAge: Int = 45

let isVotingAge = myAge >= 18

//: Create a constant named `student` and set its value to your name as a string
//:
//: Next, create a constant named `author` and set its value to "Matt Galloway", the original author of these exercises.
//: Then create a thrid constant named `authorIsStudent` that uses string equality to determine if the values of `student` and `author` are equal
let student = "J Rogel"
let author = "Matt Galloway"
let authorIsStudent = student == author


//: Create a constant named `studentBeforeAuthor` which uses string comparison to determine if the string value in the constant `student` comes, alphabetically speaking, before the sting value in the constant of `author`
//:
//: The constants `student` and `author` were declared above

let studentBeforeAuthor = student < author

//: [Next](@next)
