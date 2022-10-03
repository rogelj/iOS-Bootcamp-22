//: [Previous](@previous)

import SwiftUI

func performTask() async throws {
    Task {
        print("Starting the task in a function")
        try await Task.sleep(nanoseconds: 1_000_000_000)
        print("Finishing the task in a function")
    }
}

Task {
    try await performTask()
}

//: [Next](@next)
