//: [Previous](@previous)

import SwiftUI

let favoritesPlaylist = Playlist(title: "Favorite songs", author: "Felipe", songs: ["In and out of love"])
let partyPlaylist = Playlist(title: "Party songs", author: "Ray", songs: ["Hello"])

Task {
    await favoritesPlaylist.move(song: "Hello", from: partyPlaylist)
    await favoritesPlaylist.move(song: "In and out of love", to: partyPlaylist)
    await print(favoritesPlaylist.songs)
    await print(partyPlaylist.songs)
}


//: [Next](@next)
