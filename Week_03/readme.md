# Week 3

## Functions and Types

- [ ] [**Programming in Swift: Functions and Types**](https://www.raywenderlich.com/28433240-programming-in-swift-functions-types) video course (4h 33m)

Optional: for students who want to learn more about the Swift behind Swift
- UISwift Apprentice[ Chapter 17: Generics](https://www.raywenderlich.com/books/swift-apprentice/v7.0/chapters/17-generics)
- Swift Apprentice[ Chapter 20: Result Builders](https://www.raywenderlich.com/books/swift-apprentice/v7.0/chapters/20-result-builders)
- Swift Apprentice[ Chapter 26: Property Wrappers](https://www.raywenderlich.com/books/swift-apprentice/v7.0/chapters/26-property-wrappers)



## Overloads

- We can create function overlaid by

  - using Different Number of Parameters. In general it is better to use default values for parameters, instead of overloads, when you can
  - using Different Parameter Types
  - using Different Argument Labels, like Swift's `stride` functions

  ```swift
  for i in stride(from: 10, to: 0, by: -2) {
   print(i)
  }
  
  for i in stride(from: 10, through: 0, by: -2) {
   print(i)
  }
  
  ```

  - using Different Return Types

- Overload guidelines:

  - Overloads should be related
  - Prefer using default values to overloading
  - Avoid overloads that only differ in return type

## Advanced Parameters

- For arguments that need to be changed by the function, use the `inout` keyword. The argument is then treated as a local variable. To be able to call a function with an inout parameter, we need to call the parameter in question with an ampersand:

  ```swift
  // --------------------------------------
  var count = 0
  // --------------------------------------
  
  func incrementAndPrint(_ value: inout Int) {
    value += 1
    print(value)
  }
  incrementAndPrint(&count)
  ```


# Closures

- Block of code that do something

  - Technically functions are a type of closure

  | Closures                              |                     | Functions                                      |
  | ------------------------------------- | ------------------- | ---------------------------------------------- |
  | No                                    | Names?              | Yes                                            |
  | No                                    | Argument labels?    | Yes                                            |
  | No                                    | Default parameters? | Yes                                            |
  | Yes                                   | Write Inline?       | No                                             |
  | { (a: Int, b: Int) -> Int in  a * b } | Different syntax    | func multiply(a: Int, b: Int) -> Int { a * b } |

  Different Syntax

  ![Closure Syntax](readme_images/Closure%20Syntax.png)

- Closures & Collections

  ```swift
  forEach
  map
  compactMap
  flatMap
  filter
  reduce
  sort
  ```

- Closure syntax:

  ```swift
  Button { modalIsPresented = true }
  label: { 
  	Image(systemName: "plus")
  }
  
  Button(
    action: { modalIsPresented = true },
  	label: { Image(systemName: "plus")}
  )
  ```

- `contactMap` - Only returns collection elements that are not `nil`

- `flatMap` - Lets us handle multidimensional arrays. It expects an array as input

- `filter` - Filters out the elements that meet the required conditions

- `reduce` - Takes two arguments: an initial value and a closure 

**More About Algorithms**

- Course: “Data Structures & Algorithms in Swift” (https://www.raywenderlich.com/977854-data-structures-algorithms-in-swift)
- Book: “Data Structures & Algorithms in Swift” (https://store.raywenderlich.com/products/data-structures-and-algorithms-in-swift)
- “Swift Algorithm Club” (https://github.com/raywenderlich/swift-algorithm-club)
