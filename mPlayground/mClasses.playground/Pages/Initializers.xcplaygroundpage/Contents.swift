//: [Previous](@previous)
/*:
 ## Classes - initializers
 */
import Foundation

class MyPoint {
  var x = 0.0, y = 0.0
  init() {}
  init(x: Double, y: Double) { self.x = x; self.y = y }

  func mutatingMoveBy(x deltaX: Double, y deltaY: Double) {
    x += deltaX
    y += deltaY
  }
  func moveBy(x deltaX: Double, y deltaY: Double) -> MyPoint {
    return MyPoint(x: x + deltaX, y: y + deltaY)
  }
}
var defaultPoint = MyPoint()
var somePoint = MyPoint(x: 1.0, y: 1.0)
somePoint.mutatingMoveBy(x: 2.0, y: 3.0)

var anotherPoint = somePoint.moveBy(x: 3.0, y: 4.0)

//: [Next](@next)
