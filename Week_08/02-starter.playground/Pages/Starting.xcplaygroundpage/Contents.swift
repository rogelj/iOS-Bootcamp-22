//: [Previous](@previous)

import SwiftUI

let task = Task {
    print("This is the first")

    let sum = (1...100000).reduce(0, +)
    try Task.checkCancellation()
    print("This is second: 1 + 2 + 3 + ... + 100000 = \(sum)")
}

print("This is last")
task.cancel()

//: [Next](@next)
