//: [Previous](@previous)
/*:
## Where Type - Enum Example

*/

extension RawRepresentable where RawValue: IntegerType {
  
  func nextCase() -> Self? {
    return Self(rawValue: self.rawValue + 1)
  }
  
  func previousCase() -> Self? {
    return Self(rawValue: self.rawValue - 1)
  }
  
}

enum Number: UInt8 {
  case One = 1, Two, Three, Four, Five
}

if let threeNextsAfterTwo = Number(rawValue: 2)?.nextCase()?.nextCase()?.nextCase() {
  print(threeNextsAfterTwo)
}

let oneBeforeOne = Number(rawValue: 1)?.previousCase()

//: [Next](@next)
