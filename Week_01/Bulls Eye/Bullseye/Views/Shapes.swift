
//  Shapes.swift
//  Bullseye
//
//  Created by J Rogel PhD on 12/08/2022.
//

import SwiftUI

struct Shapes: View {
    @State private var wideShapes = true
    
    var body: some View {
        VStack {
            if !wideShapes {
                Circle()
//                    .fill(Color.blue)
//                    .inset(by: 10.0)
//                    .stroke(Color.blue, lineWidth: 20.0)
                    .strokeBorder(Color.blue, lineWidth: 10.0)
                    .frame(width: 200.00, height: 100.0)
                    .transition(.opacity)
            }
            RoundedRectangle(cornerRadius: 20.0)
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100.0)
//                .animation(.easeInOut)
            Capsule()
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100.0)
            Ellipse()
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100.0)
            Button(action: {
                withAnimation {
                    wideShapes.toggle()
                }
            }) {
                Text("Animate!")
                    .foregroundColor(.black)
            }
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
