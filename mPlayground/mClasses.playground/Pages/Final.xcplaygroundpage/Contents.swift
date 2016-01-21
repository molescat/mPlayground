//: [Previous](@previous)

import Foundation

// ---------------------------------------------- Override / Final
class Animal {
  func species() -> String { return "" }
  final func youCantOverrideThis() -> String { return "final" }
}

class Dog: Animal {
  override func species() -> String {
    return "Canine"
  }
  //  override func youCantOverrideThis() -> String { return "" }
}

var spot = Dog()
spot.species()


//: [Next](@next)
