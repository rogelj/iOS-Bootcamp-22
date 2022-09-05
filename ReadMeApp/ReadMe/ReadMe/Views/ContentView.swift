//
//  ContentView.swift
//  ReadMe
//
//  Created by J Rogel PhD on 05/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var library = Library()
    
    var body: some View {
        NavigationView {
            List(library.sortedBooks, id: \.self) { book in
                BookRow(book: book, image: $library.images[book])
            }
            .navigationTitle("My Library")
        }
    }
}

struct BookRow: View {
    let book: Book
    @Binding var image: Image?
    
    var body: some View {
        NavigationLink(destination: DetailView(book: book, image: $image)) {
            HStack {
                Book.Image(image: image, title: book.title, size: 80, cornerRadius: 12)
                TitleAndAuthorStack(book: book, titleFont: .title2, authorFont: .title3)
                    .lineLimit(1)
            }
        }
        .padding(.vertical)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewedAllColorsSchemes
    }
}

