//
//  ContentView.swift
//  My SwiftUI
//
//  Created by J Rogel PhD on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .frame(width: 100.0, height: 100.0)
                .padding()
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .padding([.bottom, .leading, .trailing])
                .background(Color.orange)
            Text("Hello, world!")
                .fontWeight(.bold)
                .kerning(5.0)
                .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
