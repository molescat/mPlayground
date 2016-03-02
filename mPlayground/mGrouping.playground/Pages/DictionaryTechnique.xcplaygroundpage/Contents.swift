//: [Previous](@previous)

//: Grouping - simple experiment using dictionary as the unique key

import Foundation

extension Array {
  func groupBy <U> (groupingFunction group: (Element) -> U) -> [U: Array] {
    var result = [U: Array]()
    for item in self {
      let groupKey = group(item)
      // If element has already been added to dictionary, append to it. If not, create one.
      if result[groupKey] != nil {
        result[groupKey]! += [item]
      } else {
        result[groupKey] = [item]
      }
    }
    
    return result
  }
}

func groupForAddress(address: String) -> Int {
  let addrs = ["a":1, "b":2, "c":1, "d":3, "e":3, "f":1, "g":4, "h":5, "i":4]
  return addrs[address]!
}


let keys = ["a", "b", "c", "d", "e", "f", "g", "h", "i"]

let groups = keys.groupBy(groupingFunction: groupForAddress)


//: [Next](@next)
