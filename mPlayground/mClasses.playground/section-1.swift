// Playground - noun: a place where people can play

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

var myShape = Square()
myShape.simpleDescription()
