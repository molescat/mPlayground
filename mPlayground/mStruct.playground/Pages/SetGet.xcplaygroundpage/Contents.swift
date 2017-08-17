//: [Previous](@previous)

import Foundation

struct Point {
  var x = 0.0, y = 0.0
}

struct Size {
  var width = 0.0, height = 0.0
}

//: --------------------- setter/getter

struct Rect {
  var origin = Point()
  var size = Size()
  var center: Point {
    get {
      let centerX = origin.x + (size.width / 2)
      let centerY = origin.y + (size.height / 2)
      return Point(x: centerX, y: centerY)
    }
    set(newCenter) {
      origin.x = newCenter.x - (size.width / 2)
      origin.y = newCenter.y - (size.height / 2)
    }
  }
}

var zeroPoint = Point();  // using defaults
var square = Rect(origin: zeroPoint,
                  size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)  // Custom getter/setter
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")

//: -- Alternate version

struct ShorthandRect {
  var origin = Point()
  var size = Size()
  var center: Point {
    get {
      let centerX = origin.x + (size.width / 2)
      let centerY = origin.y + (size.height / 2)
      return Point(x: centerX, y: centerY)
    }
    set {  // Where we use the default name 'newValue'
      origin.x = newValue.x - (size.width / 2)
      origin.y = newValue.y - (size.height / 2)
    }
  }
}

//:- Private get

struct PrivateGetModel {
  private var _height = Float(250)

  mutating func setHeight(height: Float) {
    _height = height
  }

  func display() {
    print("PrivateGetModel display", _height)
  }
}

var privateGetModel = PrivateGetModel()
privateGetModel.setHeight(height: 13)
privateGetModel.display()

//:- Private set

struct PrivateSetModel {
  private var _height = Float(250)

  private(set) var height: Float {
    get { return _height }
    set { _height = newValue }
  }
}

var privateSetModel = PrivateSetModel()
print("PrivateSetModel", privateSetModel.height)

//: [Next](@next)
