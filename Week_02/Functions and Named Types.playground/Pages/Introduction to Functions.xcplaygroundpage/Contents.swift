//: [Previous](@previous)

func printHello() {
    print("Hello!")
}

printHello()

// --------------------------------------
let passingGrade = 50
let chrisGrade = 49
let samGrade = 99

let chrisPassed = chrisGrade >= passingGrade
let samPassed = samGrade >= passingGrade
// --------------------------------------

func printPassStatus(for grade: Int, lowestPass: Int = passingGrade) {
    print(grade >= lowestPass ? "You passed!" : "Keep studying.")
}

printPassStatus(for: samGrade)

func printHighestGrade(_ grade1: Int, _ grade2: Int) {
    print(grade1 >= grade2 ? grade1 : grade2)
}

printHighestGrade(chrisGrade, samGrade)
//: [Next](@next)
