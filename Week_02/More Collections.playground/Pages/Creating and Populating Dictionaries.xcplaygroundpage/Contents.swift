//: [Previous](@previous)

var emptyDictionary: [String: Int] = [:]

var namesAndPets = ["Ron" : "🐀 Rat",
                    "Rincewind" : "🛄 Luggage",
                    "Thor" : "🔨 Hammer",
                    "Goku" : "☁️ Flying Nimbus"]
print(namesAndPets)
namesAndPets.updateValue("🐶 Mango", forKey: "Chris")

namesAndPets["Calvin"] = "🐯 Tiger"
namesAndPets.updateValue("Owl", forKey: "Ron")
namesAndPets["Ron"] = "Owl"

print(namesAndPets)

print("---")

//: [Next](@next)
