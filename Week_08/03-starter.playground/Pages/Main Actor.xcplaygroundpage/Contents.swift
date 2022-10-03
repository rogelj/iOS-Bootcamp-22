//: [Previous](@previous)

import SwiftUI
import Foundation

let url = URL(string: "https://api.raywenderlich.com/api/domains")!
let session = URLSession.shared.dataTask(with: url) { data, _, _ in
    guard let data = data,
          let domain = try? JSONDecoder().decode(Domains.self, from: data).data.first
    else {
        print("Request failed")
        
        return
    }

    Task {
        await MainActor.run {
            print(domain)
            print(Thread.isMainThread)
        }
    }
}

session.resume()

//: [Next](@next)
