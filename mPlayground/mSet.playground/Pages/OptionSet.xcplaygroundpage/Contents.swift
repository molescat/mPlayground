//: [Previous](@previous)

import Foundation

struct Option: OptionSet {
  
  let rawValue: Int
  
  init(rawValue: Int) {
    self.rawValue = rawValue
  }
  
  static let A = Option(rawValue: 1 << 0)
  static let B = Option(rawValue: 1 << 1)
  static let C = Option(rawValue: 1 << 2)
  
  static let AAndC = [A, C]
  static let All = [A, B, C]
  
}

let allOptions: Option = [.A, .B, .C]
print(allOptions)


let all = Option.All

for option in all {
  print(option)
}

let emptyOptions: Option = []
print(emptyOptions)
//: ---

//: [Next](@next)
