//
//  Detailed View.swift
//  ReadMe
//
//  Created by J Rogel PhD on 05/09/2022.
//

import SwiftUI

struct DetailView: View {
    let book: Book
    
    var body: some View {
        VStack {
            Book.Image(title: book.title)
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(book: .init())
    }
}
