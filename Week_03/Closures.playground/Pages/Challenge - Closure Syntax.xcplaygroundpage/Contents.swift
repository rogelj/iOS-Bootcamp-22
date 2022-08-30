//: [Previous](@previous)

//: ## Episode 05: Challenge - Closure Syntax

/*:
 ## Challenge 1
 Rewrite the long closure with the following syntax:
  * No parameter types
  * No parameter or return types
  * No parameter names
 Try passing the same values into each closure. Their printed results should match!
*/

// --------------------------------------
let copyLines = { (offense: String, repeatCount: Int) -> Void in
  print( String(repeating: "I must not \(offense).", count: repeatCount) )
}
// --------------------------------------

copyLines("shout", 4)

// TODO: Write solution here
typealias Operate = (String, Int) -> ()

let copyLines_2: (String, Int) -> () =  { offense, repeatCount -> Void in
  print( String(repeating: "I must not \(offense).", count: repeatCount) )
}

let copyLines_3: (String, Int) -> () =  { offense, repeatCount in
  print( String(repeating: "I must not \(offense).", count: repeatCount) )
}

let copyLines_4: (String, Int) -> () =  {
  print( String(repeating: "I must not \($0).", count: $1) )
}

let shortClosure: Operate = {
    print(String(repeating: "I must not \($0).", count: $1))
}

copyLines("shout", 4)
copyLines_2("shout", 4)
copyLines_3("shout", 4)
copyLines_4("shout", 4)
shortClosure("shout", 4)



//: [Next](@next)
