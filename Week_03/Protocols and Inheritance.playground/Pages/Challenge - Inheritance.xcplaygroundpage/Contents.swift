//: [Previous](@previous)

//: ## Episode 03: Challenge - Inheritance

/*:
## Challenge 1 - Building a Class Heirarchy
Create a class named `Animal` that has…
1. a function named `speak()` that does nothing.
 
Create two `Animal` subclasses...
1. `WildAnimal` that...
  - has an `isPoisonous` property, that is a `Bool`
  - has an initializer that takes `isPoisonous` as a parameter
2. `Pet` that...
  - has a stored property named `name`, that is a `String`
  - has an initializer that takes `name` as a parameter
  - has a `play()` method that prints out a message
  - overrides `speak()` - It should print out a message

Create one subclass of your choice of `WildAnimal` or `Pet`. It should do at least one of the following:
 - override `speak()`
 - override `play()`
 - Add a new computed property
 - Add a new method
*/


// TODO: Write solution here
class Animal {
    func speak() -> Void {
        return
    }
}

class WildAnimal: Animal {
    var isPoisonous: Bool
    
    init(isPoisonous: Bool) {
        self.isPoisonous = isPoisonous
    }
}

class Pet: Animal {
    override func speak() {
        print("Hi my name is \(name)!")
    }
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func play() {
        print("Playtime!!!")
    }
}

class Cat: Pet {
    override func speak() {
        print("I can has cheezeburger!")
    }
}

/*:
## Challenge 2 - Casting
- Create at least one instance of each class from the first challenge.
- Create an array that contains all of the instances.
- Write a function that takes an `Animal` and does something different depending on what subclass it is. Try using conditional downcasting!
- Call the function with each of your instances using a loop or whatever other method you'd like!
*/



// TODO: Write solution here

let animal = Animal()
var python = WildAnimal(isPoisonous: false)
var cobra = WildAnimal(isPoisonous: true)
var snoopy = Pet(name: "Snoopy")
var bowman = Cat(name: "Bowman")

bowman.play()
python.speak()
bowman.speak()

let animals = [animal, python, cobra, snoopy, bowman]

func printElevatorPitch(forAnimal animal: Animal) {
    if let animal = animal as? WildAnimal {
        print(animal.isPoisonous ? "It's only a bit poisonous" : "It's not poisonous at all")
        return
    }
    if let pet = animal as? Pet {
        switch pet {
        case let cat as Cat:
            print("It's a kitty named \(cat.name)! I'v always wanted a kitty.")
            cat.speak()
            return
        default:
            print("This is definitely a normal sort of pet and I've named it \(pet.name)")
            pet.speak()
            pet.play()
            return
        }
    }
    print("It's an Animal! You know, the Muppet?")
}

animals.forEach(printElevatorPitch(forAnimal:))


//: [Next](@next)
