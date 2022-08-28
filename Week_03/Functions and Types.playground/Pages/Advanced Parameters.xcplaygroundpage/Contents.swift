//: [Previous](@previous)

//: ## Episode 05 - Advanced Parameters
// --------------------------------------
let passingGrade = 50
let jessyGrade = 49
let ozmaGrade = 87
let ozmaAllGrades = [60, 96, 87, 42]
// --------------------------------------

//: ### Variadic Parameters

print(jessyGrade, ozmaGrade, "meow")

func getHighestGrade(for grades: Int...) -> Int {
  grades.max() ?? 0
}

getHighestGrade()
getHighestGrade(for: jessyGrade, ozmaGrade)

//: Passing an array would not work. This is because the function is expecting zero or more examples of the given type. In this case `Int`.
//getHighestGrade(for: ozmaAllGrades)


//: ### Inout Parameters

// --------------------------------------
var count = 0
// --------------------------------------

func incrementAndPrint(_ value: inout Int) {
  value += 1
  print(value)
}

incrementAndPrint(&count)
incrementAndPrint(&count)
count


//: [Next](@next)
