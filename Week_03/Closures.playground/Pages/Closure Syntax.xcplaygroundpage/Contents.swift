//: [Previous](@previous)

// --------------------------------------
typealias Operate = (Int, Int) -> Int
// --------------------------------------

let longClosure = { (a: Int, b: Int) -> Int in
    a * b
}

// Using type inference
let noParameterTypes = { (a: Int, b: Int) -> Int in
    a * b
}

// Explicitly showing the type
let noParameterTypes1: Operate = { (a: Int, b: Int) -> Int in
    a * b
}

//If using explicity type, we don't have to show the types in the parameters
let noParameterTypes2: Operate = { (a, b) -> Int in
    a * b
}

// If we are using an alias for the type of the closure, we may even leave the return type out
let noReturnType: Operate = { (a, b) in
    a * b
}

// In shortened closures we refer to the positions of the parameters by index
let shortClosure: Operate = { $0 * $1 }

longClosure(4, 2)
noParameterTypes(4, 2)
noParameterTypes1(4, 2)
noParameterTypes2(4, 2)
noReturnType(4, 2)
shortClosure(4, 2)

//let voidClosure: () -> Void = { () -> Void in
//    print("Ya, Swift!")
//}

//let voidClosure: () -> Void = {
//    print("Yay, Swift!")
//}

// Parameter list must always be enclosed in parentheses
let voidClosure: () -> () = {
    print("Yay, Swift!")
}


voidClosure()

//: ## Trailing closure syntax
//: We are passing a closure as the last parameter (in this case `operate` is at the end, not at the beginning:
// --------------------------------------
func printResult(_ a: Int, _ b: Int, _ operate: Operate) {
  print(operate(a, b))
}

printResult(10, 3, {$0 * $1 + 10})

// Trailing syntax
printResult(10, 3) {$0 * $1 + 10}

// --

//: [Next](@next)
