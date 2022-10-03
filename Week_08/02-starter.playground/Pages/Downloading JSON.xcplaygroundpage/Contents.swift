//: [Previous](@previous)

import SwiftUI

func fetchDomains() async throws -> [Domain] {
    let url = URL(string: "https://api.raywenderlich.com/api/domains")!
    let (data, _) = try await URLSession.shared.data(from: url)
    
    return try JSONDecoder().decode(Domains.self, from: data).data
}

Task {
    do {
        let domains = try await fetchDomains()
        
        for (index, domain) in domains.enumerated() {
            let attr = domain.attributes
            print("\(index + 1) \(attr.name): \(attr.description) - \(attr.level)")
        }
    } catch {
        print(error)
    }
}

//: [Next](@next)
