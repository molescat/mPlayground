//: [Previous](@previous)
/*:
 ## SequenceType extensions - All Match
 */

import Foundation

extension SequenceType {
  func AllMatch(predicate: Generator.Element->Bool) -> Bool {
    return !self.contains { !predicate($0) }
  }
}

let list = [1,2,3,4,5,6,7,8,9]
var allGreaterThanZero = list.AllMatch { $0 > 0 }
allGreaterThanZero


//: [Next](@next)
