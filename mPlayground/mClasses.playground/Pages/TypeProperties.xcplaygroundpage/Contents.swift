//: [Previous](@previous)

import Foundation

//: ----------------- Type Properties

class SomeClass {
  static var storedTypeProperty = "Some value."
  static var computedTypeProperty: Int {
    return 23
  }
  class var overrideableComputedTypeProperty: Int {
    return 24
  }
  class func someTypeMethod() {
    print("hello class type method")
  }
}

SomeClass.storedTypeProperty
SomeClass.storedTypeProperty = "frog"
SomeClass.storedTypeProperty
SomeClass.someTypeMethod()


//: [Next](@next)
