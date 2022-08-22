//: [Previous](@previous)

var petName: String?
petName = "Mango"
print(petName)
//petName = nil

var result: Int? = 30
print(result)
//print(result + 1)

// Optionals need to be unwrapped before being used
petName = "Mango"
var petAge: Int? = 2

// Force wunwrapping with `!`, but this may not be safe
var unwrappedPetName = petName!
print("The pet's name is \(unwrappedPetName)")

// A safer way to do this is with a `if let` statement
//if let petName != nil {
//    let unwrappedPetNme = petName
//}

if let petName = petName, let petAge = petAge {
    print("The pet is \(petName) and they are \(petAge)")
} else {
    print("No pet name or age")
}

// Nil Coalescing
var optionalInt: Int? = 10
var requiredResult = optionalInt ?? 0

//: [Next](@next)
