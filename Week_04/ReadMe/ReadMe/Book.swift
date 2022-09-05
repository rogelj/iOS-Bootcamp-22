//
//  Book.swift
//  ReadMe
//
//  Created by J Rogel PhD on 05/09/2022.
//

import Foundation

struct Book: Hashable {
    let title: String
    let author: String
    
    init(title: String = "Title", author: String = "Author") {
        self.title = title
        self.author = author
    }
}
