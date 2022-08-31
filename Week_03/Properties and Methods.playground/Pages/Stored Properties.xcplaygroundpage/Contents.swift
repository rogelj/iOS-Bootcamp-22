//: [Previous](@previous)

struct Wizard {
    // Type Properties (they can be `var` or `let`)
    static var commonMagicalIngredients = [
    "Polyjuice Potion",
    "Eye of Haystack Needle",
    "The Force"
    ] {
        didSet {
            print("Magical Ingredients updated. Common stock now contaings \(commonMagicalIngredients)")
        }
    }
    
    var firstName: String {
        // Property observer
        willSet {
            print(firstName + " will be set to " + newValue)
        }
        didSet {
            if firstName.contains(" ") {
                print("No space allowed! \(firstName) is not a first name. Reverting to \(oldValue)")
                firstName = oldValue
            }
        }
    }
    var lastName: String
}

var wizard = Wizard(firstName: "Gandalf", lastName: "Greyjoy")
wizard.firstName = "Hemione"
wizard.lastName = "Kenobi"
wizard.firstName = "Merling Rincewind"

Wizard.commonMagicalIngredients
Wizard.commonMagicalIngredients.append("Wow-Wow Sauce")


//: [Next](@next)
