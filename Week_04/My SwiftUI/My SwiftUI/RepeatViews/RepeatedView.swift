//
//  RepeatedView.swift
//  My SwiftUI
//
//  Created by J Rogel PhD on 07/09/2022.
//

import SwiftUI

struct RepeatedView: View {
    let mix = MeowMix()
    @State private var showMessage = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                MeowMixHeader()
                    .padding()
                    .onTapGesture {
                        showMessage = true
                    }
                    .popover(isPresented: $showMessage, content: {
                        MessagePopover()
                    })
                
                Divider()
                    .padding()
                
                // Add a List of tracks
                List(mix.tracks) { track in
                    NavigationLink(destination: DetailView(track: track), label: {
                        TrackRow(track: track)
                    })
                }
                
                // Add FeaturedCats view
                FeaturedCats(artists: mix.tracks.map(\.artist))
                    .padding(.vertical)
                    .backgroundStyle(Color.gray.opacity(0.2))
            }
            .navigationBarHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FeaturedCats: View {
    let artists: [String]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Featured Cats")
                .font(.title)
                .padding(.leading)
            
            // Add a scrolling horiztonal list of featured artists
            ScrollView(.horizontal) {
                HStack(alignment: .top, spacing: 25) {
                    ForEach(artists, id: \.self) { artist in
                        FeaturedArtist(artist: artist)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct RepeatedView_Previews: PreviewProvider {
    static var previews: some View {
        let mix = MeowMix()
        
        RepeatedView()
        
        FeaturedCats(artists: mix.tracks.map(\.artist))
            .previewLayout(.sizeThatFits)
        
        TrackRow(track: mix.tracks.first!)
            .previewLayout(.sizeThatFits)
        
        FeaturedArtist(artist: "Keyboard Cat")
            .previewLayout(.sizeThatFits)
    }
}

struct TrackRow: View {
    let track: Track
    
    var body: some View {
        HStack {
            track.thumbnail
                .padding()
                .background(track.gradient)
                .cornerRadius(6)
            
            Text(track.title)
            Text(track.artist)
                .foregroundColor(.secondary)
                .lineLimit(1)
                .truncationMode(.tail)
            
            Spacer()
            
            Text("\(track.duration)")
        }
    }
}

struct FeaturedArtist: View {
    let artist: String
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill([Color.orange, .pink, .purple, .red, .yellow].randomElement()!)
                    .scaledToFit()
                
                Image(systemName: "music.mic")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
            }
            
            Text(artist)
                .multilineTextAlignment(.center)
                .lineLimit(2)
        }
        .frame(width: 120)
    }
}


struct DetailView: View {
  let track: Track
  
  var body: some View {
    ZStack {
      track.gradient
        .ignoresSafeArea()
      
      VStack {
        Text(track.title)
          .font(.largeTitle)
          .fontWeight(.black)
        Text(track.artist)
          .font(.title)
          .fontWeight(.semibold)
        
        track.thumbnail
          .resizable()
          .scaledToFit()
          .padding(50)
      }
      .foregroundColor(.white)
    }
  }
}

struct MessagePopover: View {
  var body: some View {
    Text("These cats are not available in your region 😿")
      .font(.title)
      .padding()
  }
}

