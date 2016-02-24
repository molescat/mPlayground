//: [Previous](@previous)

/** 
https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Extensions.html

*/

import Foundation

struct Person {
  var firstName: String
  var middleName: String
  var lastName: String
}

// Extend struct/class to provide default computed properties
extension Person {
  var fullName: String {
    return "\(firstName) \(middleName) \(lastName)"
  }
}

// extension can extend an existing type to make it adopt one or more protocols
extension Person: CustomStringConvertible {
  var description: String {
    return "Fullname -> \(fullName)"
  }
}

var buddy = Person(firstName: "Wile", middleName: "E.", lastName: "Coyote")

buddy.fullName




//: [Next](@next)
