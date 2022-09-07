//
//  StateBinding.swift
//  My SwiftUI
//
//  Created by J Rogel PhD on 07/09/2022.
//

import SwiftUI

struct StateBinding: View {
    @State private var swiftyColor: Color = .red
    @State private var swfityOpacity: Double = 0.7
    
    var body: some View {
        VStack {
            SwiftyControls(swiftyColor: $swiftyColor, swfityOpacity: $swfityOpacity)
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .padding(25)
                .foregroundColor(.white)
                .opacity(swfityOpacity)
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

struct SwiftyControls: View {
    @Binding var swiftyColor: Color
    @Binding var swfityOpacity: Double
    
    var body: some View {
        VStack {
            ColorPicker("Swifty Color", selection: $swiftyColor)
            Slider(value: $swfityOpacity, in: 0...1)
                .accentColor(swiftyColor)
        }
    }
}
