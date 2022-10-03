
//: [Previous](@previous)

import SwiftUI

Task {
    print("Starting the task")
    try await Task.sleep(nanoseconds: 1_000_000_000)
    print("Finishing the task")
}


//: [Next](@next)
