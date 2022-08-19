//
//  ContentView.swift
//  Bullseye
//
//  Created by J Rogel PhD on 10/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    
    var body: some View {
        ZStack {
            BackgroundView(game: $game)
            VStack {
                InstructionsView(game: $game)
                    .padding(.bottom, alertIsVisible ? 0 : 100)
                if alertIsVisible {
                    PointsView(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
                        .transition(.scale)
                } else {
                    HitMeButton(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
                        .transition(.scale)
                }
            }
            if !alertIsVisible {
                SliderView(sliderValue: $sliderValue)
                    .transition(.scale)
            }
        }
    }
}

struct InstructionsView: View {
    @Binding var game: Game
    
    var body: some View {
        VStack {
            InstructionText(text: "🎯🎯🎯\nPut the Bullseye as close as you can to")
                .padding(.leading, 30.0)
                .padding(.trailing, 30.0)
            BigNumberText(text: String(game.target))
        }
        
    }
}

struct SliderView: View {
    @Binding var sliderValue: Double

    var body: some View {
        HStack {
            SliderLabelText(text: "1")
            Slider(value: $sliderValue, in: 1.0...100.0)
            SliderLabelText(text: "100")
        }
        .padding()
    }
}

struct HitMeButton: View {
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
// NEEDED BY THE DEFAULT ALERT
//        let roundedValue = Int(sliderValue.rounded())
        
        Button("Hit me".uppercased()) {
            withAnimation {
                alertIsVisible = true
            }
        }
        .padding(20.00)
        .background(
            ZStack {
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
            }
        )
        .foregroundColor(Color.white)
        .cornerRadius(Constants.General.roudedRectCornerRadius)
        .overlay(
            RoundedRectangle(cornerRadius: Constants.General.roudedRectCornerRadius)
                .strokeBorder(Color.white, lineWidth: Constants.General.strokeWidth, antialiased: true)
        )
// == REMOVING THE DEFAULT ALERT STYLE
//        .alert("Hello there!", isPresented: $alertIsVisible, actions: {
//            let points = game.points(sliderValue: roundedValue)
//            Button("Awesome!") {
//                game.startNewRound(points: points)
//            }
//        }, message: {
//            Text("The slider's value is \(roundedValue).\n" + "You score \(game.points(sliderValue: roundedValue)) points this round.")
//        })
        .bold()
        .font(.title3)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
            .preferredColorScheme(.dark)
    }
}
