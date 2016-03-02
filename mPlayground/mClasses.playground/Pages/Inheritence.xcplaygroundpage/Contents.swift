//: ----------------- Classes Inheritence

import UIKit

class Shape {
  var numberOfSides = 0
  let name: String
  
  init(name: String) { self.name = name }
  
  func simpleDescription() -> String {
    return "A \(name) with \(numberOfSides) sides"
  }
}

var triangle = Shape(name: "Triangle")
triangle.numberOfSides = 3
triangle.simpleDescription()


class Square: Shape {
  init() {
    super.init(name: "Square")
    numberOfSides = 4
  }
}


let myShape = Square()
myShape.simpleDescription()


let anotherShape = myShape
anotherShape.numberOfSides = 10
if anotherShape === myShape {
  print("refers to exacly the same object")
}
myShape  // note - myShape is now 10 sided, even though it is const, and you modified anotherShape


