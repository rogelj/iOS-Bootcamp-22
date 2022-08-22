//: [Previous](@previous)

// -----------------------------------
//struct Actor {
//  let name: String
//  var filmography: [String] = []
//}
// -----------------------------------

class Actor {
    let name: String
    var filmography: [String] = []
    
    init(name: String, filmography: [String]) {
        self.name = name
        self.filmography = filmography
    }
    
    func signOnForSequel(franchiseName: String) {
        filmography.append("Upcoming \(franchiseName) sequel")
    }
}

let gotgStar = Actor(name: "Zoe Saldana", filmography: ["Guardians of the Galaxy"])
gotgStar.filmography.append("Avatar")

let starTrek = gotgStar
starTrek.filmography.append("Star Trek")
var avatarStar = starTrek

for franchiseName in avatarStar.filmography {
    avatarStar.signOnForSequel(franchiseName: franchiseName)
}
print(avatarStar.filmography)
print(starTrek.filmography)
print(gotgStar.filmography)
//: [Next](@next)
