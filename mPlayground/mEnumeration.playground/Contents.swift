//: Playground - Enumerations

import UIKit

enum CompassPoint {
  case North
  case South
  case East
  case West
}

enum Planet {
  case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

var planet = Planet.Mercury
planet = .Mercury

switch planet {
case Planet.Jupiter:
  fallthrough
case .Saturn:
  println("gas giants")
default: // switch must be exhaustive
  println("just a rock")
}

