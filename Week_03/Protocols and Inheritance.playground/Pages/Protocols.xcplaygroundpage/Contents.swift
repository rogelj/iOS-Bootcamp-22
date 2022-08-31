//: [Previous](@previous)

//: ## Episode 06: Protocols

//class Animal {
//  let name: String
//
//  required init(name: String) {
//    self.name = name
//  }
//
//  func speak() { }
//}

// In a protocol we list requirements, not implementations!
protocol Animal {
    var name: String { get }
    
    init(name: String)
    
    func speak ()
}

class Dog: Animal {
    let name: String
    
    var tricksLearnedCount: Int
    
    init(name: String, tricksLearnedCount: Int) {
        self.tricksLearnedCount = tricksLearnedCount
        self.name =  name
    }
    
    convenience required init(name: String) {
        self.init(name: name, tricksLearnedCount: 0)
    }
    
    func speak() {
        print("Bow wow! My name is \(name)!")
    }
}

class Cat: Animal {
    let name: String
    
    required init(name: String) {
        self.name = name
    }
    
    func speak() {
        print("My name is \(name). Please leave me alone. I must look at this wall.")
    }
}

Dog(name: "Fang")
Cat(name: "Mr. Midnight")

let animals: [Animal] = [Dog(name: "Fang"), Cat(name: "Mr. Midnight")]
for animal in animals {
    animal.speak()
}





//: [Next](@next)
