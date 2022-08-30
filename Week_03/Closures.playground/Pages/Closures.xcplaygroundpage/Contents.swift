//: [Previous](@previous)


// --------------------------------------
typealias Operate = (Int, Int) -> Int

func add(a: Int, b: Int) -> Int {
  a + b
}

// This variable is actually a closure
var operate = add

// We can create this with syntax closure:
// We may not need to provide the type (`Operate`) if we use type inference
var addClosure: Operate = { (a: Int, b: Int) -> Int  in
    a + b
}

// function
add(a: 7, b: 3)

// closures
operate(7, 3)
addClosure(7, 3)

// Example 2
func printResult(_ operate: Operate, _ a: Int, _ b: Int) {
    let result = operate(a, b)
    print(result)
}

printResult(addClosure, 4, 5)
printResult(operate, 4, 5)
printResult(addClosure, 4, 5)
printResult(+, 4, 5)

printResult(
    {
        (a: Int, b: Int) -> Int in
        a * b + 100
    },
    7, 3
)

//: [Next](@next)
