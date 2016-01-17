//: Playground - Enumerations

import UIKit

enum CompassPoint {
  case North
  case South
  case East
  case West
}

var direction = CompassPoint.North


//--------------------------------- RawValue value
enum Planet: Int {
  case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

var planet = Planet.Mercury
planet = .Mercury

switch planet {
case Planet.Jupiter:
  fallthrough
case .Saturn:
  print("gas giants", terminator: "")
default: // switch must be exhaustive
  print("just a rock", terminator: "")
}

let possiblePlanet = Planet(rawValue: 7)
let impossiblePlanet = Planet(rawValue: 14)


//--------------------------------- Associated value
enum Barcode {
  case UPCA(Int, Int, Int, Int)
  case QRCode(String)
}

var item = Barcode.UPCA(8, 85909, 51226, 3)

item = Barcode.QRCode("1234567890")

switch item {
case .UPCA(let numberSystem, let manufacturer, let product, let check):
  print("UPCA-A: \(numberSystem), \(manufacturer), \(product), \(check)", terminator: "")
case let .QRCode(productCode):
  print("QR Code: \(productCode)", terminator: "")
}


//--------------------------------- Prepoulated
enum ASCIIControlChars: Character {
  case Tab = "\t"
  case LineFeed = "\n"
  case CarriageReturn = "\r"
}

print("test\(ASCIIControlChars.LineFeed.rawValue)test", terminator: "")

