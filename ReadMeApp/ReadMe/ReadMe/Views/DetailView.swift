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
    @State var showingImagePicker = false
    @State var showingDialog = false
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
            VStack {
                Divider()
                    .padding(.vertical)
                TextField("Review...", text: $book.microReview)
                Book.Image(image: image, title: book.title, cornerRadius: 16)
                    .scaledToFit()
                HStack {
                    if image != nil {
                        Spacer()
                        Button("Delete Image") {
                            showingDialog = true
                        }
                    }
                    Spacer()
                    Button("Update Image...") {
                        showingImagePicker = true
                    }
                    Spacer()
                }
                .padding()
            }
            Spacer()
        }
        .padding()
        .sheet(isPresented: $showingImagePicker) {
            PHPickerViewController.View(image: $image)
        }
        .confirmationDialog("Delete image for \(book.title)?", isPresented: $showingDialog) {
            Button("Delete", role: .destructive) {
                image = nil
            }
        } message: {
            Text("Delete imag for \(book.title)?")
        }

    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(book: .init(), image: .constant(nil))
            .previewedAllColorsSchemes
    }
}
