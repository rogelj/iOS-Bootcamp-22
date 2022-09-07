//
//  ChallengeStateBinding.swift
//  My SwiftUI
//
//  Created by J Rogel PhD on 07/09/2022.
//

import SwiftUI

enum Mood: String {
  case happy = "😀"
  case sad = "☹️"
  case upsidedown = "🙃"
  case cat = "🐱"
}

struct ChallengeStateBinding: View {
    // MARK:- Directions
    /*
       Follow the TODO's and errors to complete this challenge and get the project compiling.
      * Figure out where to use the @State and @Binding attributes
      * Pass the right data into the `StatusControl` and `StatusIcon` views
      * Test out your solution with the Live View in the Canvas!
    */
      
      // MARK: TODO - These 3 properties will need an attribute added...
      @State private var name: String = ""
      @State private var favoriteColor: Color = .green
      @State private var mood: Mood = .happy
      
      var body: some View {
        VStack {
          // MARK: TODO - Pass the right kind of data into each initializer
          Text("Set your status:")
          
            StatusControl(name: $name, favoriteColor: $favoriteColor, mood: $mood)
            .padding()
          
            StatusIcon(name: name, favoriteColor: favoriteColor, mood: mood)
            .padding()
        }
      }
}
    
struct StatusControl: View {
  // MARK: TODO - These 3 properties will need an attribute added...
  @Binding var name: String
  @Binding var favoriteColor: Color
  @Binding var mood: Mood
        
  var body: some View {
    // MARK: TODO - Pass the right data into the views below
    VStack {
      TextField("Name", text: $name)
        .textFieldStyle(RoundedBorderTextFieldStyle())
      
      ColorPicker("Favorite Color", selection: $favoriteColor)
      
      Picker("Mood", selection: $mood) {
        Text(Mood.happy.rawValue).tag(Mood.happy)
        Text(Mood.sad.rawValue).tag(Mood.sad)
        Text(Mood.upsidedown.rawValue).tag(Mood.upsidedown)
        Text(Mood.cat.rawValue).tag(Mood.cat)
      }
      .pickerStyle(SegmentedPickerStyle())
    }
  }
}

struct StatusIcon: View {
  let name: String
  let favoriteColor: Color
  let mood: Mood
  
  var body: some View {
    VStack {
      Text(mood.rawValue)
      Text(name)
        .foregroundColor(.white)
    }
    .font(.largeTitle)
    .padding()
    .background(favoriteColor)
    .cornerRadius(12)
  }
}

struct ChallengeStateBinding_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeStateBinding()
    }
}
