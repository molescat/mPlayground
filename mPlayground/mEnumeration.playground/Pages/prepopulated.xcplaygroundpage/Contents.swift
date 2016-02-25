//: [Previous](@previous)

import Foundation

//--------------------------------- Prepoulated
enum ASCIIControlChars: Character {
  case Tab = "\t"
  case LineFeed = "\n"
  case CarriageReturn = "\r"
}

print("test\(ASCIIControlChars.LineFeed.rawValue)test")

//: [Next](@next)
