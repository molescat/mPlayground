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


// ---------------------------------------------- Type Properties
class SomeClass {
  static var storedTypeProperty = "Some value."
  static var computedTypeProperty: Int {
    return 23
  }
  class var overrideableComputedTypeProperty: Int {
    return 24
  }
  class func someTypeMethod() {
    println("hello class type method")
  }
}

SomeClass.storedTypeProperty
SomeClass.storedTypeProperty = "frog"
SomeClass.storedTypeProperty
SomeClass.someTypeMethod()


// ----------------------------------------------

class MyPoint {
  var x = 0.0, y = 0.0
  init() {}
  init(x: Double, y :Double) { self.x = x; self.y = y }

  func mutatingMoveByX(deltaX: Double, y deltaY: Double) {
    x += deltaX
    y += deltaY
  }
  func moveByX(deltaX: Double, y deltaY: Double) -> MyPoint {
    return MyPoint(x: x + deltaX, y: y + deltaY)
  }
}
var defaultPoint = MyPoint()
var somePoint = MyPoint(x: 1.0, y: 1.0)
somePoint.mutatingMoveByX(2.0, y: 3.0)

var anotherPoint = somePoint.moveByX(3.0, y: 4.0)


// ---------------------------------------------- Override
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
