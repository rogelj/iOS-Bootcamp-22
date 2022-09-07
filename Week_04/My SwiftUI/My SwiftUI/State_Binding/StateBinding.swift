//
//  StateBinding.swift
//  My SwiftUI
//
//  Created by J Rogel PhD on 07/09/2022.
//

import SwiftUI

struct StateBinding: View {
    @State var swiftyColor: Color = .red
    
    var body: some View {
        VStack {
            ColorPicker("Swifty Color", selection: $swiftyColor)
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .padding(25)
                .foregroundColor(.white)
                .opacity(0.7)
                .background(swiftyColor)
                .cornerRadius(50)
        }
        .padding()
    }
}

struct StateBinding_Previews: PreviewProvider {
    static var previews: some View {
        StateBinding()
    }
}
