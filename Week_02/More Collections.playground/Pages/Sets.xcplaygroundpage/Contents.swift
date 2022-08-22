//: [Previous](@previous)

var someSet: Set<Int> = [1, 2, 3, 1]
//let someArray: Array<Int>
//let someDictionary: Dictionary<String, Int>

someSet.contains(1)
someSet.contains(99)

someSet.insert(5)

let removedElement = someSet.remove(3)
let nilElement = someSet.remove(42)

print(someSet)

let anotherSet: Set<Int> = [5,7,13]
let instersection = someSet.intersection(anotherSet)
let difference = someSet.symmetricDifference(anotherSet)
let union = someSet.union(anotherSet)

someSet.formUnion(anotherSet)

print(someSet)
print(anotherSet)
//: [Next](@next)
