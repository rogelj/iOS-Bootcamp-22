# Week 2

## Swift Fundamentals

- [x] [**Programming in Swift: Fundamentals**](https://www.raywenderlich.com/5539282-programming-in-swift-fundamentals) video course (4h 33m)

- [x] (Optional)[ I’m an Idiot by Richard Turton](https://www.raywenderlich.com/498-rwdevcon-2017-inspiration-talk-i-m-an-idiot-by-richard-turton) video talk (22 mins)

- [x] (Optional) extra learning: resources from the Swift Book

  - [The Basics](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)
  - [Basic Operators](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html)
  - [Collection Types](https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html)
  - [Control Flow](https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html)
  - [Functions](https://docs.swift.org/swift-book/LanguageGuide/Functions.html)
  - [Classes & Structures](https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html)

Some examples of the work done this week:

```swift
class Student {
  let name: String
  var grade: Int
  var pet: String?
  
  init(name: String, grade: Int, pet: String? = nil) {
    self.name = name
    self.grade = grade
    self.pet = pet
  }
  
  func getPassStatus(lowestPass: Int = 50) -> Bool {
    grade >= lowestPass
  }
  
  func earnExtraCredit() {
    grade += 10
  }
}

let chris = Student(name: "Chris", grade: 49, pet: "Mango")
chris.getPassStatus()
chris.earnExtraCredit()
chris.getPassStatus()
```



