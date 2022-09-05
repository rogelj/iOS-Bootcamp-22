//
//  ContentView.swift
//  ReadMe
//
//  Created by J Rogel PhD on 05/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Book.Image(title: Book().title)
            Text("Hello, world!")
                .font(.title2)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


