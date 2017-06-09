//: [Previous](@previous)
/*:
## RawValue value
*/
import Foundation

enum Planet: Int {
  case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var planet: Planet = .mercury

switch planet {
case .jupiter:
  fallthrough
case .saturn:
  print("gas giants")
default: // switch must be exhaustive
  print("just a rock")
}

let possiblePlanet = Planet(rawValue: 7)
let impossiblePlanet = Planet(rawValue: 14)

//: [Next](@next)
