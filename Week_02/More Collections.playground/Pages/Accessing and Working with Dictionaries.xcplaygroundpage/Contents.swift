//: [Previous](@previous)

var namesAndPets = [
    "Ron" : "🦉 Owl",
    "Rincewind" : "🛄 Luggage",
    "Thor" : "🔨 Hammer",
    "Goku" : "☁️ Flying Nimbus",
    "Chris" : "🐶 Mango",
    "Calvin" : "🐯 Tiger",
    "Hiccup" : "🐉 Toothless"
]

namesAndPets["Rincewind"]
namesAndPets["Captain Ahab"]
let captainAhab = namesAndPets["Captain Ahab"] ?? "No white whale for Captain Ahab"

namesAndPets.isEmpty
namesAndPets.count
namesAndPets.removeValue(forKey: "Goku")

namesAndPets["Hiccup"] = nil
print(namesAndPets)

for (character, pet) in namesAndPets {
    print("\(character) has a \(pet)")
}

for (name, _) in namesAndPets {
    print(name)
}

print("---")

for name in namesAndPets.keys {
    print(name)
}
for pet in namesAndPets.values {
    print(pet)
}
//: [Next](@next)
