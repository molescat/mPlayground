//: [Previous](@previous)
/*: https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Extensions.html
## Extensions

Extensions add new functionality to an existing class, structure, enumeration, or protocol type. This includes the ability to extend types for which you do not have access to the original source code (known as retroactive modeling). Extensions are similar to categories in Objective-C. (Unlike Objective-C categories, Swift extensions do not have names.)

Extensions in Swift can:

* Add computed properties and computed type properties
* Define instance methods and type methods
* Provide new initializers
* Define subscripts
* Define and use new nested types
* Make an existing type conform to a protocol

*/

struct Person {
  var firstName: String
  var middleName: String
  var lastName: String
}

//: Extend struct/class to provide default computed properties
extension Person {
  var fullName: String {
    return "\(firstName) \(middleName) \(lastName)"
  }
}

//: Extension can extend an existing type to make it adopt one or more protocols
extension Person: CustomStringConvertible {
  var description: String {
    return "Fullname is >>>\(fullName)<<<"
  }
}

var buddy = Person(firstName: "Wile", middleName: "E.", lastName: "Coyote")
buddy.fullName

//: [Next](@next)
