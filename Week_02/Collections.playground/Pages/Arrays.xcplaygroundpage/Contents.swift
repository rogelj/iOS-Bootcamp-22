//: [Previous](@previous)

////let pastries: [String] = ["cookie", "cupcake", "donut", "pie"]
//var pastries: [String] = []
//pastries.append("cookie")
//pastries.append("danish")
//pastries += ["cupcake", "donut", "pie"]

//: ## Operating on Arrays

var pastries: [String] = ["cookie", "danish", "cupcake", "donut", "pie", "brownie"]
pastries[0]
pastries[3]

// Slicing and dicing the array
// Note the slicing does not automatically resets the indexing!!
let firstThree = Array(pastries[1...3])
firstThree[0]
pastries.append("eclair")
//pastries.removeAll()

pastries.isEmpty
pastries.count
if let first = pastries.first {
    print(first)
}

pastries.contains("donut")
pastries.contains("lasagna")

pastries.insert("tart", at: 0)
let removedTwo = pastries.remove(at: 2)
let removedLast = pastries.removeLast()
removedTwo
removedLast

pastries[0...1] = ["brownie", "fritter", "tart"]
pastries

pastries.swapAt(1, 2)


//: [Next](@next)
