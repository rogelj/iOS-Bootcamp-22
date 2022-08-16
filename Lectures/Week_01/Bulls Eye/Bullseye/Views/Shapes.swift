
//  Shapes.swift
//  Bullseye
//
//  Created by J Rogel PhD on 12/08/2022.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle()
//                .fill(Color.blue)
//                .inset(by: 10.0)
//                .stroke(Color.blue, lineWidth: 20.0)
                .strokeBorder(Color.blue, lineWidth: 10.0)
                .frame(width: 200.00, height: 100.0)
            RoundedRectangle(cornerRadius: 20.0)
                .fill(Color.blue)
                .frame(width: 200, height: 100.0)
            Capsule()
                .fill(Color.blue)
                .frame(width: 200, height: 100.0)
            Ellipse()
                .fill(Color.blue)
                .frame(width: 200, height: 100.0)
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
