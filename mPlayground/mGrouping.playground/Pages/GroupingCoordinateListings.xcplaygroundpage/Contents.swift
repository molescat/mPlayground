//: Grouping - using dictionary as the unique key

import UIKit

class Listing : CustomStringConvertible {
  let latitude: Int!
  let name: String!
  init(latitude: Int, name: String) {self.latitude = latitude; self.name = name }
  
  func makeKey() -> String {
    return String(self.latitude)
  }

  var description: String { return "\(name) at \(latitude)" }
}

let testListing = Listing(latitude: 0, name: "Test")
testListing.makeKey()

let listings:[Listing] = [
  Listing(latitude: 1, name: "Alice"),
  Listing(latitude: 2, name: "Bob"),
  Listing(latitude: 3, name: "Charles"),
  Listing(latitude: 1, name: "David"),
  Listing(latitude: 4, name: "Eric"),
  Listing(latitude: 2, name: "Frank")
]

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

func groupForAddress(listing: Listing) -> String {
  return listing.makeKey()
}

let groups = listings.groupBy(groupingFunction: groupForAddress)

for (key, value) in groups {
  print("Key '\(key)' Value '\(value)'")
}

/*

[
  [Alice at 1, David at 1]
  [Bob at 2, Frank at 2]
  [Charles at 3]
  [Eric at 4]
]

*/

//: [Next](@next)
