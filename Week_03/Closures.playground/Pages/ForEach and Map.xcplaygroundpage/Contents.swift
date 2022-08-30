//: [Previous](@previous)

//: ## Episode 06: forEach & map
import Foundation

// --------------------------------------
var prices = [1.50, 10.00, 4.99, 2.30, 8.19]
// --------------------------------------

//: `forEach` and a for-loop are sort of interchangeable.
//: `map` on the other hand returns a collection

//: `forEach` - Loops over a collection and performs an operation

for price in prices {
    print(price)
}

prices.forEach{ (price) in
    print(price)
}

prices.forEach { print($0) }

//: `map` - Loops over an array, executes closure code, returns a new array

var arrayForSalePrices: [Double] = []

for price in prices {
    arrayForSalePrices.append(price * 0.9)
}
arrayForSalePrices

let salesPrices = prices.map { (price) -> Double in
    price * 0.9
}

salesPrices

//let salesPrices = prices.map { $0 * 0.9 }

let priceLabels = salesPrices.map { (price) -> String in
    String(format: "%.2f", price)
}


//: [Next](@next)
