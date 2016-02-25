//: [Previous](@previous)

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
  
}

var value: CompassPoint = .North
print(value.reverse)

var optionalValue: CompassPoint? = .North
print(optionalValue?.reverse)

var reverseValue = optionalValue?.reverse
print(reverseValue)
print(reverseValue?.rawValue)

let compass = CompassPoint(rawValue: "North")
print(compass)


//: [Next](@next)
