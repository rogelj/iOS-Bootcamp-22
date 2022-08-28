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
