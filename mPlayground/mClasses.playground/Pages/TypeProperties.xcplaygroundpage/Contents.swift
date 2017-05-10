//: [Previous](@previous)
/*:
## Classes - Type properties
*/
import Foundation

class SomeClass {
  static var storedTypeProperty = "cat"
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

print(SomeClass.storedTypeProperty)
SomeClass.storedTypeProperty = "frog"
print(SomeClass.storedTypeProperty)

print(SomeClass.computedTypeProperty)
SomeClass.someTypeMethod()


//: [Next](@next)
