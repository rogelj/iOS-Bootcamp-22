//
//  Detailed View.swift
//  ReadMe
//
//  Created by J Rogel PhD on 05/09/2022.
//

import class PhotosUI.PHPickerViewController
import SwiftUI

struct DetailView: View {
    let book: Book
    @State var showingImagePicker = false
    @Binding var image: Image?
    
    var body: some View {
        VStack(alignment: .leading) {
            TitleAndAuthorStack(book: book, titleFont: .title, authorFont: .title2)
            VStack {
                Book.Image(image: image, title: book.title, cornerRadius: 16)
                    .scaledToFit()
                Button("Update Image...") {
                    showingImagePicker = true
                }
                .padding()
            }
            Spacer()
        }
        .padding()
        .sheet(isPresented: $showingImagePicker) {
            PHPickerViewController.View(image: $image)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(book: .init(), image: .constant(nil))
    }
}
