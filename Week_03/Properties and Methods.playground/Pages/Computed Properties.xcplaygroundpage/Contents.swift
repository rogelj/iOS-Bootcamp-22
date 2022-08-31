//: [Previous](@previous)

//: ## Episode 03: Computed Properties


struct Wizard {
    static var commonMagicalIngredients = [
        "Polyjuice Potion",
        "Eye of Haystack Needle",
        "The Force"
    ] {
        didSet {
            print("Magical Ingredients updated! Common stock now contains \(commonMagicalIngredients)")
        }
    }
    
    var firstName: String {
        willSet {
            print(firstName + " will be set to " + newValue)
        }
        didSet {
            if firstName.contains(" ") {
                print("No spaces allowed! \(firstName) is not a first name. Reverting name to \(oldValue).")
                firstName = oldValue
            }
        }
    }
    var lastName: String
    
    var fullName: String {
        get { return "\(firstName) \(lastName)" }
        // by default it is called `newValue`, here we give it a name
        set(newFullName) {
            let nameSubstrings = newFullName.split(separator: " ")
            guard nameSubstrings.count >= 2 else {
                print("\(newFullName) is not a full name")
                return
            }
//            let nameString = nameSubstrings.map { substring in
//                String(substring)
//            }
            let nameString = nameSubstrings.map(String.init)
            firstName = nameString.first!
            lastName = nameString.last!
        }
    }
}

var wizard = Wizard(firstName: "Gandalf", lastName: "Greyjoy")
wizard.firstName = "Hermione"
wizard.lastName = "Kenobi"
wizard.firstName = "Merlin Rincewind"

wizard.fullName

// If we try to assign the computed property we get an error if the propety does not have the `set` attribute:
wizard.fullName = "Blah blah"




//: [Next](@next)
