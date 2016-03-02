//: [Previous](@previous)

import Foundation

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


//: [Next](@next)
