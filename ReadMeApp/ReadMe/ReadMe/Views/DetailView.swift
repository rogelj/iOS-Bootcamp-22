//
//  Detailed View.swift
//  ReadMe
//
//  Created by J Rogel PhD on 05/09/2022.
//

import class PhotosUI.PHPickerViewController
import SwiftUI

struct DetailView: View {
    @ObservedObject var book: Book
    @Binding var image: Image?
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16){
                Button {
                    book.readMe.toggle()
                } label: {
                    Image(systemName: book.readMe ? "bookmark.fill" : "bookmark")
                        .font(.system(size: 48, weight: .light))
                }
                TitleAndAuthorStack(book: book, titleFont: .title, authorFont: .title2)
            }
            ReviewAndImageStack(book: book, image: $image)
        }
        .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(book: .init(), image: .constant(nil))
            .previewedAllColorsSchemes
    }
}
