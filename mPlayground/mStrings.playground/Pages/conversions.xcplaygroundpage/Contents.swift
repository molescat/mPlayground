//: [Previous](@previous)
/*:
## String conversions
*/
import Foundation

//: --- Split into an Array of words

var fullname = "Alfred E. Newman"
var x = fullname.characters.split(" ").map(String.init)

//: --- String from Class

class Shape {
  func hello() {
    print(" [\(String(self))]")
  }
}

let shape = Shape()
shape.hello()
String(shape)

String(Shape)
NSStringFromClass(Shape.self)
NSStringFromClass(Shape)

//: [Next](@next)
