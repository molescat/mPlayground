// Playground - Classes (Inheritence, Lazy)

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
  println("refers to exacly the same object")
}
myShape  // note - myShape is now 10 sided, even though it is const, and you modified anotherShape


// ---------------------------------------------- Lazy
class DataImporter {
  /*
  The class is assumed to take a non-trivial amount of time to initialize.
  */
  var fileName = "data.txt"
  // ...
}

class DataManager {
  lazy var importer = DataImporter()
  var data = [String]()
  // ...
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
// the DataImporter instance for the importer property has not yet been created

