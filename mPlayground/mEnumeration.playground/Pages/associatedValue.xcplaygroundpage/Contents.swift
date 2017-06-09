//: [Previous](@previous)
/*:
## Associated value
*/
import Foundation

enum Barcode {
  case UPCA(Int, Int, Int, Int)
  case QRCode(String)
}

var item = Barcode.UPCA(8, 85909, 51226, 3)

item = Barcode.QRCode("1234567890")

switch item {
case .UPCA(let numberSystem, let manufacturer, let product, let check):
  print("UPCA-A: \(numberSystem), \(manufacturer), \(product), \(check)")
case let .QRCode(productCode):
  print("QR Code: \(productCode)")
}

//: [Next](@next)
