//: [Previous](@previous)

//: ## Episode 02: Inheritance

struct Grade {
  var letter: Character
  var points: Double
  var credits: Double
}

class Person {
  var firstName: String
  var lastName: String
  
  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }
}

//class Student {
//  var grades: [Grade] = []
//
//  var firstName: String
//  var lastName: String
//
//  init(firstName: String, lastName: String) {
//    self.firstName = firstName
//    self.lastName = lastName
//  }
//}

// Since a student is a person, we can use inheritance to encapsulate this
class Student: Person {
  var grades: [Grade] = []
}

class SchoolBandMember: Student {
    var minimumPracticeTime = 2
}

//class StudentAthelete: Student {
//    override var grades: [Grade] {
//        get { return super.grades }
//        set {
//            super.grades = newValue
//            if !isEligible {
//                print("It's time to study!")
//            }
//        }
//    }
//
//    var isEligible: Bool {
//        return grades.filter { $0.letter == "F"} .count < 3
//    }
//}

// Instead of overriding (like above), when not doing much else with the "getter",  we can use a property observer
class StudentAthelete: Student {
    override var grades: [Grade] {
        didSet {
            if !isEligible {
                print("It's time to study!")
            }
        }
    }
    
    var isEligible: Bool {
        return grades.filter { $0.letter == "F"} .count < 3
    }
}

let jon = Person(firstName: "Jon", lastName: "Snon")
let jane = Student(firstName: "Jane", lastName: "Snane")

jon.firstName
jane.firstName

let historyGrades = Grade(letter: "B", points: 9, credits: 3)
jane.grades.append(historyGrades)


let jessy = SchoolBandMember(firstName: "Jessy", lastName: "Catterwaul")
let marty = StudentAthelete(firstName: "Marty", lastName: "McWolf")

let array: [Student] = [jane, jessy, marty]

// Casting - from a subclass to a superclass - up-casting
let student = marty as Student
// Down-casting - take a superclass instance and turn it into a subclass instance
// Using forced down-casting with !
let athlete = student as! StudentAthelete


func getEveningActivity(student: Student) -> String {
    if let bandMember = student as? SchoolBandMember {
        return "Practice for at least \(bandMember.minimumPracticeTime) hours"
    } else {
        return "Hitting the books!"
    }
}

getEveningActivity(student: jessy)
getEveningActivity(student: jane)

let utterFailureGrade = Grade(letter: "F", points: 0, credits: 0)
athlete.grades.append(utterFailureGrade)
athlete.grades.append(utterFailureGrade)
athlete.grades.append(utterFailureGrade)

//: [Next](@next)
