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
    
    Task { @MainActor in
        print(domain)
        print(Thread.isMainThread)
    }
}

session.resume()

extension Domains {
    @MainActor func domainNames() -> [String] {
        print("Gettign domain names in the main thread? \(Thread.isMainThread)")
        
        return data.map { $0.attributes.name }
    }
}

let session2 = URLSession.shared.dataTask(with: url) { data, _, _ in
    guard let data = data,
          let domains = try? JSONDecoder().decode(Domains.self, from: data)
    else {
        print("Request failed")
        
        return
    }
    
    Task {
        await print(domains.domainNames())
    }
}

session2.resume()
//: [Next](@next)
