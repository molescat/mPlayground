//: [Previous](@previous)
/*:
## Prepoulated
*/
import Foundation

enum ASCIIControlChars: Character {
  case Tab = "\t"
  case LineFeed = "\n"
  case CarriageReturn = "\r"
}

print("test\(ASCIIControlChars.LineFeed.rawValue)test")

//: [Next](@next)
