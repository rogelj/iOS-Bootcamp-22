//
//  PointsView.swift
//  Bullseye
//
//  Created by J Rogel PhD on 16/08/2022.
//

import SwiftUI

struct PointsView: View {
    var body: some View {
        VStack(spacing: 10) {
            InstructionText(text: "The slide's value is")
            BigNumberText(text: "89")
            BodyText(text: "You scored 200 Points\n🎉🎉🎉")
            Button(action: {}) {
                ButtonText(text: "Start New Round")
            }
        }
            .padding()
            .frame(maxWidth: 300)
            .background(Color("BackgroundColor"))
                .cornerRadius(21.0)
                .shadow(radius: 10, x: 5, y: 5)
    }
}

struct PointsView_Previews: PreviewProvider {
    static var previews: some View {
        PointsView()
        PointsView()
            .preferredColorScheme(.dark)
        PointsView()
            .previewInterfaceOrientation(.landscapeLeft)
        PointsView()
            .previewInterfaceOrientation(.landscapeLeft)
            .preferredColorScheme(.dark)
    }
}
