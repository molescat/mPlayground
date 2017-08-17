//: [Previous](@previous)
/*:
## Enumeration - strings
*/
import Foundation

enum CompassPoint: String {
  case North
  case South
  case East
  case West

  var reverse: CompassPoint {
    switch self {
    case .North: return .South
    case .South: return .North
    case .East: return .West
    case .West: return .East
    }
  }

  func key() -> String {
    return self.rawValue
  }

}

var value: CompassPoint = .North
print(value.reverse)

let compass = CompassPoint(rawValue: "North")!
print(compass)

let x: String = compass.key()

//: [Next](@next)
