//: [Previous](@previous)

import Foundation

//: ----------------- RawValue value

enum Planet: Int {
  case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

var planet = Planet.Mercury
planet = .Mercury

switch planet {
case Planet.Jupiter:
  fallthrough
case .Saturn:
  print("gas giants")
default: // switch must be exhaustive
  print("just a rock")
}

let possiblePlanet = Planet(rawValue: 7)
let impossiblePlanet = Planet(rawValue: 14)


//: [Next](@next)
