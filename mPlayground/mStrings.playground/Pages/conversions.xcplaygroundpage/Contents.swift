//: [Previous](@previous)
/*:
 ## String conversions
 */
import Foundation

//: --- Split into an Array of words

//var fullname = "Alfred E. Newman"
//var x = fullname.characters.split(separator: " ").map(String.init)

//: --- String from Class

class Shape {
  func hello() {
    print(String(describing: Shape.self))
  }
}

let shape = Shape()
shape.hello()
String(describing: Shape.self)

NSStringFromClass(Shape.self)
NSStringFromClass(Shape)

//: [Next](@next)
