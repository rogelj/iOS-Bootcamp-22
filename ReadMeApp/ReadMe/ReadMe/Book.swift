//
//  Book.swift
//  ReadMe
//
//  Created by J Rogel PhD on 05/09/2022.
//

import Foundation
import Combine

class Book: ObservableObject {
    let title: String
    let author: String
    @Published var microReview: String
    @Published var readMe: Bool
    
    init(title: String = "Title", author: String = "Author", microReview: String = "", readMe: Bool = true) {
        self.title = title
        self.author = author
        self.microReview = microReview
        self.readMe = readMe
    }
}

extension Book: Hashable, Identifiable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension Book: Equatable {
    static func == (lhs: Book, rhs: Book) -> Bool {
        lhs === rhs
    }
    
    
}
